#include<satellite_statemachine.h>


sat_state_handler Sat_state_handler;



void sat_state_handler::begin(uint8_t ID, uint8_t Max_IDs){
    this->ID = ID;
    this->num_ID = Max_IDs;
}

void sat_state_handler::handle(){
    timestamp = millis();
    switch (state)
    {
    case Idle:
        idle();
        break;
    
    case Sending:
        transmitting();
        break;
    case Checking:
        checking();
        break;
    case Retrying:
        retrying();
        break;
    }
}



//Når en satellit står og idler venter han bare på at et ID under ham
void sat_state_handler::idle(){
    static uint32_t last_package_time = 0;

    if(Jydesnak_serde.package_ready()){

        radio_Package* package = Jydesnak_serde.read_package();
        Serial.println("GOT package: ");
        Serial.print("[ID: ");
        Serial.print(package->ID);
        Serial.print(", OK");
        Serial.print(package->OK);
        Serial.println("]");
        if(!package->OK){
            return; //Vi har modtaget noget forkert
        }
        last_package_time = timestamp;

        if(ID == 0 && package->ID == (num_ID -1)){ //Hvis vi har ID 0 så lytter vi jo efter det højeste ID
            state = Sending; //Vi skal transmitte
        }

        if(package->ID == (ID - 1)){ //Så er det vores tur til at transmitte næste gang.
            state = Sending;
        }
    }

    if(ID == 0 && timestamp-last_package_time > t_deadline){ //Hvis vi har ID=0 så har vi ansvaret for at starte kæden hvis der ikke er nogen der skriger ud i verden.
        state = Sending; //så sænder vi ud i rummet.
    }
}


//Når vi faktisk skal sende noget ud i rummet.
void sat_state_handler::transmitting(){
    static uint32_t start_time = 0;
    if(start_time == 0){ //Når vi kommer ind i funktionen
        start_time = timestamp;
        digitalWrite(LED, HIGH);

    }
    if(timestamp - start_time < transmission_delay){ //Vi venter jo bare
        if(Jydesnak_serde.package_ready()){
            state = Idle;
        }
        return;
    }

    start_time = 0; //nulstiller så vi kan køre videre igen

    Serial.println("sending ping");

    
    Jydesnak_serde.send_pling(); //**KODE TIL ULTRALYD
    cli();
    pling(1, 16);   
    sei();
    digitalWrite(LED, LOW);


    t_my_last_transmission = timestamp;
    state = Checking;
}
void sat_state_handler::checking(){
    if(Jydesnak_serde.package_ready()){

        //FEDT NOGEN HAR SENDT EN PAKKE efter os.
        Serial.println("Next ping confirmed, going IDLE");
        state = Idle;
    }

    if((timestamp-t_my_last_transmission) > (transmission_delay*2)){ //Transmissionstiden med lidt ekstra
        //ØV ingen har sendt en pakke efter os
        state = Retrying;
    }
}
void sat_state_handler::retrying(){

    digitalWrite(LED, HIGH);
    Jydesnak_serde.send_pling();
    cli();    //**KODE TIL ULTRALYD
    pling(1, 16);   
    sei();
    Serial.println("Retrying");
    digitalWrite(LED, LOW);

    t_my_last_transmission = timestamp;
    state = Checking;
}



