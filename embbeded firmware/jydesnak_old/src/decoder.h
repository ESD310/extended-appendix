#include<Arduino.h>
#include<jydesnak_common_structs.h>



#ifndef jydesnak_decoder
#define jydesnak_decoder

#define BUFFERSIZE 32



class Decoder{
    uint16_t baud_rate;
    uint16_t T;
    const uint8_t pin = 2;
    const uint32_t t_margin = 80; //Vores timingmargin i mikrosekunder 80
    uint16_t start_symbol = 0x2A2A;
    bool package_ready = 0;
    uint16_t decoded_symbol = 0;
    uint8_t my_ID = 2;
    uint8_t filter_ID = 1;
    decoderMode operating_mode = listen_to_all;
    
    void write_to_buffer(uint8_t input);
    uint8_t outputBuffer[BUFFERSIZE];

    
public:
    uint8_t readpointer = 0;
    uint8_t writepointer = 0;
    Decoder();
    void begin(uint16_t baud_rate);
    void handle();
    uint8_t decode_byte();
    bool available();
    uint8_t* read_byte();
    void handle_interrupt();
};
extern Decoder decoder;



#endif