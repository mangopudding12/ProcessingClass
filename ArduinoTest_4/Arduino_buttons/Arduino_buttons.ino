
// Button 1 kommt an Pin 2, Button 2 an Pin 10
const int buttonPin1 = 2;
const int buttonPin2 = 10;
 
// Zum Zwischenspeichern der Button-Zustände
int buttonState1 = 0;
int buttonState2 = 0;

  
// Enthält den String, der an den PC geschickt wird
String data;
 
// Serielle Schnittstelle einrichten, pinModes setzen
void setup() {
  Serial.begin(9600);
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);
}
 
 
void loop() {
  // Beise Buttons auslesen
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);
  //bb = 0;
  // und in einen einfachen String zusammenbauen
  data = normalizeData(buttonState1, buttonState2);
  // dieser String (z.B. S10E+Zeilwenwechsel) wird dann seriell ausgegeben.
  Serial.println(data);
  // Um die serielle Ausgabe zu beobachten, einfach nach dem Programmstart den seriellen Monitor in der Arduino Umgebung starten
  delay(20);
}
 
// normalizeData fügt die Werte der beiden Buttons zusammen und ergänzt den String um ein eindeutiges Start- und Endezeichen
String normalizeData(int b1, int b2) {
 
  String B1string = String(b1);
  String B2string = String(b2);
 
  // Erzeugt Werte wie S00E, S10E, S01E, S11E
  String ret = String("S") + B1string + B2string + String("E");
  return ret;
}
