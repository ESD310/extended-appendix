#include<Arduino.h>



#ifndef def_HAL
#define def_HAL
#define LED 8
#define pin1_acoustic 10    
#define pin2_acoustic 9
#define bit_0 4
#define bit_1 5
#define bit_2 6 
#define bit_3 7

void setup_board();
void DEBUG_stamp();
uint8_t read_ID();
void pling(int8_t polarity, size_t periods);




#endif