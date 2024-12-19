#include<Arduino.h>






class encoder{
    uint16_t baud_rate;
    uint16_t T;
    const uint8_t pin = 2;
    uint16_t start_symbol = 0x2A2A;
    

    void send_start_symbol(); //!Depricated 

    void send_byte(uint8_t byte); //Ham her bruger vi

    public:
    encoder(uint16_t baud_rate);
    void send_stream(uint8_t* buffer, size_t size);
    void training_signal();

};