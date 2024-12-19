## jydesnak
En hurtig måde at broadcaste på

---
### Hvårn virker'n
Så der skal bare inkluderes det her github link i platformio.ini
```
lib_deps =
    https://github.com/ESD310/jydesnak/ //Det bibliotek vi har skrevet
    https://github.com/PaulStoffregen/RadioHead.git //ET bibliotek der skal til for at vores virker
```
og så selvølgelig lige inkludere den header man skal bruge, man kan inkludere begge dele
```cpp
#include<serde.h> //interface der sørger for pakker og atl det det der. (Klart den nemmeste)
```
#### For modtageren
I setup'et
```cpp
Jydesnak_serde.begin(2, 2000); //ID På 2, baud rate på 2000
```


I `loop` kan der så bagefter køres:
```cpp
if(Jydesnak_serde.package_ready()){ //tjekker om der kommet en besked i bufferen
    radio_Package* output = Jydesnak_serde.read_package(); //Får pointer til bufferen
    output->debug_info(); //en sød lige debug funktion der skriver hvad structet indeholder
}
```

#### For senderen
Det minder i princippet meget om serial objektet. Når man så vil have en sender kan det samme gøres med med en encoder
```cpp
Jydesnak_serde.send_pling() //baud rate, og det skal lige huske at vores baud rate ikke er vores bitrate her (manchester)
```

ellers kan man sende rå binære data med `encoder.send_stream(uint8_t* buffer, size_t size);`, eller den mere børnevenlige version:
```cpp
encoder.send_ping(); //Sender training bits det ID som er blevet sat og UPCODE'en for
```
---
### Vigtig viden, ligegyldig info
De delte structs for systemet kan findes i `jydesnak_common_structs.h`.
Det skal lige huskes at de structs der arbejdes med ser sådan her ud
```cpp
struct radio_Package{
    uint8_t ID;
    upcode Upcode;
    uint16_t arguments[3];
    uint8_t crc;
    void debug_info(); //Den er god den smider ud hvordan en pakke er på seriel
};
```
Og vores enums for upcodes er defineret sådan her
```cpp
enum upcode{PING=0, SET_TIMING=1, MY_POS=2}; //MYPOS og GETPOS er to be implemented;
```
