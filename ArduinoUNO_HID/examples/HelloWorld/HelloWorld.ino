#include "./duckduino.h"

void setup() {
Serial.begin(9600);
delay(200);

WINDOWS();
delay(100);
STRING("notepad");
delay(200);
ENTER();
delay(1000);

STRING("Hello World");
}

void loop() {
}