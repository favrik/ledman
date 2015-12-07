int led = 9;
int usbnumber = 0;

void setup() {
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available() > 0) {
    usbnumber = Serial.read();
  }

  if (usbnumber == 49) {
    digitalWrite(led, HIGH);
  }

  if (usbnumber == 48) {
    digitalWrite(led, LOW);
  }

  usbnumber = 0;
}
