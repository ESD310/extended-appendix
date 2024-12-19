#include <Arduino.h>
#include <serde.h>
#include <satellite_statemachine.h>
#include <HAL.h>


void setup(){

  setup_board(); //Sætter IO op

  DEBUG_stamp(); //smider lige Compiletime og Satellitens ID ud, så vi har den til debugging
  
  Jydesnak_serde.begin(read_ID(), 2000); //Sætter radio op så vi kan sende og modtage med det ID

  Sat_state_handler.begin(read_ID(), 3); //Sætter statemachine op med vores ID og antal satelliter i systemet.

}

void loop() {
  Sat_state_handler.handle(); //Håndterer statemachine
}




