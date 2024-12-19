#include <Arduino.h>
#include <SPI.h>
#include<serde.h> //interface der sørger for pakker og atl det det der. (Klart den nemmeste)

#define STARTPIN 8
#define POSUPDATE 7
#define IDPIN0 6
#define IDPIN1 5



#define CS_PIN 9 // Set the Chip Select pin
#define CIPO PB4 
#define SCK PB5 




void readXYZData(uint32_t *x, uint32_t *y, uint32_t *z, uint32_t *tof) {
  digitalWrite(CS_PIN, LOW); // Pull CS low to initiate communication'
  cli();
  SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE3));
  // Read 3 bytes for X-axis
  *x = SPI.transfer(0x00); // First byte (MSB)
  *x <<= 8;
  *x |= SPI.transfer(0x00); // Second byte
  *x <<= 8;
  *x |= SPI.transfer(0x00);        // Third byte (LSB)

  // Read 3 bytes for Y-axis
  *y = SPI.transfer(0x00); // First byte (MSB)
  *y <<= 8;
  *y |= SPI.transfer(0x00); // Second byte
  *y <<= 8;
  *y |= SPI.transfer(0x00);        // Third byte (LSB)

  // Read 3 bytes for Z-axis
  *z = SPI.transfer(0x00); // First byte (MSB)
  
  *z <<= 8;
  *z |= SPI.transfer(0x00); // Second byte
  *z <<= 8;
  *z |= SPI.transfer(0x00);        // Third byte (LSB)

  *tof = SPI.transfer(0x00) & B01111111;
  *tof <<=8;
  *tof |= SPI.transfer(0x00);
  *tof <<=8;
  *tof |= SPI.transfer(0x00);
  digitalWrite(CS_PIN, HIGH);
  SPI.endTransaction();
  sei();
   // Pull CS high to end communication
}

float Get_Distance(float x, float y, float z, uint8_t ID){
  float knownpos[3][3] = {
    {0.0f,0.0f,1.65f},
    {3.74f,0.0f,1.65f},
    {1.199f,4.306,1.65f}
  };

  float dx = x - knownpos[ID][0];
  float dy = y - knownpos[ID][1];
  float dz = z - knownpos[ID][2];

  return sqrt(pow(dx,2)+pow(dy,2)+pow(dz,2));
}
/// @brief Konverterer de unsigned vi får til signed
/// @param input 
/// @return signed værdier
int32_t tues_compliment(uint32_t input){
  //størrelse 22 bit (21 downto 0)
  if(!bitRead(input,21)){ //Hvis første bit er 0 er det positivt og vi er ligeglade
    return (input);
  }
  uint32_t temp = input & 0x001FFFFF; //Det er det som vi kan bruge
  temp |= 0xFFE00000;
  return temp;
}




void setup() {
  // Set up serial communication for debugging  
  Serial.begin(115200);

  // Begins jydesnak
 Jydesnak_serde.begin(2, 2000); //ID På 2, baud rate på 2000

  pinMode(STARTPIN, OUTPUT);
  pinMode(IDPIN0, OUTPUT);
  pinMode(IDPIN1, OUTPUT);
  pinMode(POSUPDATE, INPUT);
  // Set up SPI
  SPI.begin(); // Initializes the SPI bus
  
  pinMode(CS_PIN, OUTPUT); // Set CS pin as output
  digitalWrite(CS_PIN, HIGH); // Start with CS high (deselected)

  Serial.println("X,Y,Z,ID,TOF,TIME");
  
  digitalWrite(8, LOW);
  digitalWrite(IDPIN0, LOW);
  digitalWrite(IDPIN1, LOW);
}
int cycles = 0;
void loop() {
  if (count < 65){
    uint32_t x, y, z, tof;


      //Serial.print("Afstand: "); Serial.print(tof_m - 0.11,5); Serial.println("m");
  

  if(Jydesnak_serde.package_ready()){
    digitalWrite(RDYPIN, HIGH);  
    //tjekker om der kommet en besked i bufferen
    radio_Package* output = Jydesnak_serde.read_package(); //Får pointer til bufferen
    //output->debug_info(); //en sød lige debug funktion der skriver hvad structet indeholder
    switch (output->ID)
    {
      case 0:
        digitalWrite(IDPIN0,LOW);
        digitalWrite(IDPIN1,LOW);
        break;
      case 1:
        digitalWrite(IDPIN0,HIGH);
        digitalWrite(IDPIN1,LOW);
        break;
      case 2:
        digitalWrite(IDPIN0,LOW);
        digitalWrite(IDPIN1,HIGH);
        break;

      default:
        break;
      }
      delayMicroseconds(2);
      digitalWrite(RDYPIN, LOW);
          
      readXYZData(&x, &y, &z,&tof);
      // Convert readings to meters 
      float x_m = tues_compliment(x) / 100000.0;
      float y_m = tues_compliment(y) / 100000.0;
      float z_m = tues_compliment(z) / 100000.0;
      float tof_m = (tof*343) / 100000.0;

      // Print to Serial
      /*Serial.print("X: "); Serial.print(x_m, 4); Serial.println("m");
      Serial.print("Y: "); Serial.print(y_m, 4); Serial.println("m");
      Serial.print("Z: "); Serial.print(z_m, 4); Serial.println("m");
      Serial.print("TOF: "); Serial.print(tof * 10); Serial.println("us");
      Serial.print("Afstand: "); Serial.print(tof_m); Serial.println("m");
*/
      Serial.print(x_m, 4); Serial.print(",");
      Serial.print(y_m, 4); Serial.print(",");
      Serial.print(z_m, 4); Serial.print(",");
      Serial.print(output->ID); Serial.print(",");
      Serial.print(tof); Serial.print(",");
      Serial.print(millis()); Serial.println();
      if(cycles > 10000){
        while(true){};
      }
      cycles ++;
  }



}