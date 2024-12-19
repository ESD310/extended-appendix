#include<serde.h>


class jydesnak_serde Jydesnak_serde; 

/// @brief Begynder vores encoder ved at sætte baud rates for encoder og dekoder
/// @param ID Det id systemet selv skal have.
void jydesnak_serde::begin(uint8_t ID, uint16_t baud_rate){
    driver = RH_ASK(baud_rate, 3, 2, A4);
    this->ID = ID;
    driver.init();

}


/// @brief Vigtig makker. Han sender et validt ping igennem systemet og ud via radioen
void jydesnak_serde::send_pling(){
    //Decoder.setListening(Transmitting);
    uint8_t data[] = {ID,PING}; //Den simpleste pakke
    //Encoder.send_stream(data, sizeof(data));
    //Decoder.setListening(Listening);

    driver.send(data, sizeof(data));

    driver.waitPacketSent();
    //delay(50); //SÅ vi ikke sender  gange.
}

void jydesnak_serde::attachTimingFunction(void (*timingfunc)()){
    //Decoder.attachTimingFunction(timingfunc);
}

/// @brief Fortæller om der er en pakke klar som er modtaget
/// @return True, hvis der er mindst en pakke i bufferen.
bool jydesnak_serde::package_ready(){
    return driver.available();
}


/// @brief Læser en pakke hvis der er en tilgængelig med package ready flaget. Der findes en OK variable i klassen som kan bruges til at se om det blev dekodet ok.
/// @return pointer til en pakke der blevet læst og dekodet som en ordenlig pakke
radio_Package* jydesnak_serde::read_package(){
    buffer_package.OK = false;
    uint8_t buffer[32];
    uint8_t bufferlength = 2;

   
    


    if(driver.recv(buffer, &bufferlength)){
        //Serial.print("Buffer length");
        //Serial.print(bufferlength);
        if(bufferlength == 0){
            return &buffer_package;
        }
        buffer_package.ID = buffer[0];
        buffer_package.Upcode = (upcode)buffer[1];
    }
    else{
        return &buffer_package;
    }
    //buffer_package.Upcode = (upcode) *Decoder.read_byte();
    //buffer_package.ID = Decoder.header & 0x0F;
    //Decoder.Package_ready = false;
    switch (buffer_package.Upcode)
    {
    case PING:
        buffer_package.OK = true;
        return &buffer_package; //VI har alt vi skal bruge. så vi smutter
    
    case SET_TIMING: //! Ikke implementeret
        /* code */
        return &buffer_package; //AHHHHHH

    case MY_POS: //! IKke implementeret
        /* code */
        return &buffer_package;
    default:
            //! PANIK
        return &buffer_package;
    }

}
