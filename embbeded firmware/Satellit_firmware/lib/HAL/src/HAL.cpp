#include<HAL.h>
#define pin_1_LOW PORTB &= ~(1 << PB1)
#define pin_1_HIGH PORTB |= (1 << PB1)
#define pin_2_LOW PORTB &= ~(1 << PB2)
#define pin_2_HIGH PORTB |= (1 << PB2)
#define T_period 13

void setup_board(){
    pinMode(LED, OUTPUT);
    pinMode(pin1_acoustic, OUTPUT);
    pinMode(pin2_acoustic, OUTPUT);
    pinMode(bit_0, INPUT_PULLUP);
    pinMode(bit_1, INPUT_PULLUP);
    pinMode(bit_2, INPUT_PULLUP);
    pinMode(bit_3, INPUT_PULLUP);
    digitalWrite(pin1_acoustic, LOW);
    digitalWrite(pin2_acoustic, LOW);
    

    Serial.begin(115200);
}

//læser ID'et på mikroswitchesne på printet
uint8_t read_ID(){
  uint8_t temp = 0;
  temp |= digitalRead(bit_0);
  temp <<= 1;
  temp |= digitalRead(bit_1);
  temp <<= 1;
  temp |= digitalRead(bit_2);
  temp <<= 1;
  temp |= digitalRead(bit_3);

  return (0x0F & ~temp);
}

void DEBUG_stamp(){
    Serial.print("[Satellite firmware ESD310,\t compile time: ");
    Serial.print(CURRENT_TIME);
    Serial.print("\t ID: ");
    Serial.print(read_ID());
    Serial.println("]");
}

void pling(int8_t polarity, size_t periods){
  for (int i = 0; i < periods; i++)
  {
    switch (polarity)
    {
    case 1:
      pin_2_HIGH;
      pin_1_LOW;
      delayMicroseconds(T_period);
      pin_2_LOW;
      pin_1_HIGH;
      delayMicroseconds(T_period);
    break;
    case -1:
      pin_2_LOW;
      pin_1_HIGH;
      delayMicroseconds(T_period);
      pin_2_HIGH;
      pin_1_LOW;
      delayMicroseconds(T_period);
    break;
    case 0:
      pin_2_LOW;
      pin_1_LOW;
      delayMicroseconds(T_period);
      pin_2_LOW;
      pin_1_LOW;
      delayMicroseconds(T_period);
    break;
    default:
      break;
    }
  }
  digitalWrite(pin1_acoustic, LOW);
  digitalWrite(pin2_acoustic, LOW);
}