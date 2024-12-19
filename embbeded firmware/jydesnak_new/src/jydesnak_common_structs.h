#include<Arduino.h>
#ifndef jydesnak_common_structs
#define jydesnak_common_structs
enum upcode{PING=0, SET_TIMING=1, MY_POS=2}; //MYPOS og GETPOS er to be implemented;

enum radioMode{Listening, Transmitting};


struct radio_Package{
    uint8_t ID;
    upcode Upcode;
    uint16_t arguments[3];
    bool OK = false;
    void debug_info(){
        Serial.print("[PACKAGE: \t ID: ");
        Serial.print(ID);
        Serial.print("\t UPCODE: ");
        
        switch (Upcode)
        {
        case PING:
            Serial.print("PING");
            /* code */
            break;
        case SET_TIMING:
            Serial.print("SET_TIMING");
            Serial.print("\t TIMING: ");
            
            Serial.print(arguments[0]);
            Serial.println(" ms");

            break;
        case MY_POS:
            Serial.print("MY_POS");
            Serial.print("\t POS (XYZ): ");

            for (int i = 0; i < 3; i++)
            {
                Serial.print(arguments[i]);
                Serial.print(" ");
            }
            
            /* code */
            break;
        
        default:
            break;
        }
        Serial.print("\t OK: ");
        Serial.print(OK);
        Serial.println("]");
    }
};


#endif


