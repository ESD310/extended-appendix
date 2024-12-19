#include<Arduino.h>
#include<jydesnak_common_structs.h>
#include<RH_ASK.h>


#ifndef jydesnak_serde_def
#define jydesnak_serde_def


class jydesnak_serde{
    uint8_t ID = 0x00;
    
    radio_Package buffer_package;
    public:
    RH_ASK driver;
    void begin(uint8_t ID, uint16_t baud_rate);
    void send_pling();
    bool package_ready();
    radio_Package* read_package();
    void attachTimingFunction(void (*timingfunc)());


};


extern class jydesnak_serde Jydesnak_serde; 


#endif