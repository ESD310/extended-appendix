#include<decoder.h>


Decoder decoder;


enum pinchange{pinchange_timeout, pin_rising, pin_falling};


pinchange wait_for_change(uint32_t timeout){
    bool state_now = digitalRead(3);
    uint32_t t_start = micros();
    while(digitalRead(3) == state_now){
        if(micros() - t_start > timeout){
            return pinchange_timeout;
        }
    }
    if(state_now == 0){
        return pin_rising;
    }
    else{
        return pin_falling;
    }
}



void Decoder::handle(){

}
void Decoder::handle_interrupt(){
    static int16_t score = 0;
    static uint32_t lastTime = 0;
    uint32_t t_now = micros();
    uint32_t delay = t_now - lastTime;
    if(delay > 420 && delay < 580){
        score++;
    }
    else{
        score -= 2;
        if(score < 0){
            score = 0;
        }
    }
    lastTime = t_now;
    if(score < 15){
        return;
    }
    //så vi locked så vi begynder at kigge på offtider
    uint32_t lowpulse = 250;
    cli();
    while(lowpulse > 200 && lowpulse < 300){

        lowpulse = pulseIn(3, LOW, 2000);

        if(lowpulse == 0){ //Starten af selve dataen
            delayMicroseconds(T);
            

            uint8_t first_symbol = decode_byte();
            uint8_t second_symbol = decode_byte();
            uint8_t third_symbol = decode_byte();
            
            
            write_to_buffer(first_symbol);
            write_to_buffer(second_symbol);
            write_to_buffer(third_symbol);
            score = 0;
            break;
        }
    }
    sei();
}


void Decoder::write_to_buffer(uint8_t input){
    outputBuffer[writepointer] = input;
    writepointer = (writepointer + 1) % BUFFERSIZE;
    if (writepointer == readpointer){ //vi har lige overflowet vores buffer :((
        readpointer = (readpointer + 1) % BUFFERSIZE;
    }
}


uint8_t Decoder::decode_byte(){
    uint8_t symbol = 0;

    digitalWrite(7, HIGH);
    for (int i = 0; i < 8; i++)
    {
        symbol >>= 1;
        symbol |= digitalRead(3) << 7;

        wait_for_change(T/2);
        delayMicroseconds(T-T/4);
        digitalWrite(7, LOW);
    }


    return symbol;
}



void RX_interrupt(){

    decoder.handle_interrupt();
}


bool Decoder::available(){
    if(readpointer != writepointer){
        return true;
    }
    return false;
}
uint8_t* Decoder::read_byte(){
    uint8_t temp = readpointer;
    cli();
    readpointer = (readpointer + 1) % BUFFERSIZE;
    sei();
    return &outputBuffer[temp];
}




Decoder::Decoder(){
}
void Decoder::begin(uint16_t baud_rate){
    this->baud_rate = baud_rate;
    DDRD |= (1<<pin);
    pinMode(7, OUTPUT);

    this->T = 1000000/baud_rate;
    this->T = this->T/2;
    this->T = this->T*2;//laver baudraten et tal vi kan dele i 2
    attachInterrupt(digitalPinToInterrupt(3), RX_interrupt, RISING);
}



/**
 * @brief Ordenlig gammel kode der ikke virker
 * 
 * 
            if((first_symbol >> 4) != filter_ID && operating_mode == filter_transmitter){ //Så hvis vores id ikke er det vi vil ha og vi ikke lytter til alt
                return;
            }

            radio_Package *output_package = &outputBuffer[writepointer];
            output_package->ID = first_symbol >> 4;
            output_package->Upcode = (upcode)(first_symbol & 0x0F);
            

            switch (output_package->Upcode) //Hvorvidt vi skal have nogen argumenter med
            {
            case PING:
                //ingen argumenter
                break;
            case SET_TIMING: //timing i millisekunder
                uint16_t temp = decode_byte();
                temp <<= 8;
                temp |= decode_byte();
                output_package->arguments[0] = temp;
                break;

            case MY_POS:
                for (uint8_t i = 0; i < 3; i++)
                {
                    uint16_t temp = decode_byte();
                    temp <<= 8;
                    temp |= decode_byte();
                    output_package->arguments[i] = temp;
                }
                
                break;
            default:
                //invalid command kan man sige #PANIK
                break;
            }
            output_package->crc = decode_byte();

            writepointer = (writepointer + 1) % BUFFERSIZE;
            if (writepointer == readpointer){ //vi har lige overflowet vores buffer :((
                readpointer = (readpointer + 1) % BUFFERSIZE;
            }
            score = 0;
            digitalWrite(7, LOW);
            return;
 * 
 */