#include<Arduino.h>
#include<serde.h>
#include<HAL.h>

enum states_t {Idle, Sending, Checking, Retrying}; //de states vi må være

class sat_state_handler{
    int ID = 0; //Satellittens eget ID
    int num_ID = 2; //Antallet af satelliter i systemet
    states_t state = Idle; //Start tilstanden
    uint32_t timestamp = 0; //timestamp brugt af funktionerne
    uint32_t transmission_delay = 500; //Tiden det skal tage fra tur til tur
    uint32_t t_my_last_transmission = 0; //timestamp for hvornår vi sidst har sendt
    const uint32_t t_deadline = 10.5f*transmission_delay; //backstopper deadline hvis man har ID = 0, så starter man hvis der er helt radiotavshed

    void idle(); //Når vi idler og lytter på de andre
    void transmitting(); //Når vi skal vente og sende 
    void checking(); //Når man har sendt tjekker man om den næste har sendt ellers prøver vi igen
    void retrying(); //Hvis der ikke er nogen som har modtaget det man har sendt


    public:
    void begin(uint8_t ID, uint8_t Max_IDs);  //Sætter maskinen op med hvor mange ID'er der må være og vores eget ID
    void handle(); //Handler som skifter mellem de forskellige states. Kald så ofte som muligt
};

extern sat_state_handler Sat_state_handler;