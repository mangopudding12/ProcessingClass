char val; // Data received from the serial port
int ledPin = 13; // Set the pin to digital 13
 char val2;


int POP = 8;
boolean ledState = LOW; //to toggle our LED

void setup() 
{
  pinMode(ledPin, OUTPUT); // Set pin as OUTPUT
  Serial.begin(9600); // This way processing and arduino talking with the same rate !!
  establishContact();  // send a byte to establish contact until receiver responds 
}

void loop()
{
  if (Serial.available() > 0) { // If data is available to read,
    val = Serial.read(); // read it and store it in val
    val2 = Serial.read(); 
    
    if(val == '1') //if we get a 1
    {
       ledState = !ledState; //flip the ledState
       digitalWrite(ledPin, ledState); 
    }
    
    //delay(100);
    
    if (val2 == '3')
    {
       digitalWrite(POP, HIGH); 
    } else {
      digitalWrite(POP,LOW);
    }
    
    
  } 
    else {
    Serial.println("Hello, world!"); //send back a hello world
    delay(50);
    }
}

void establishContact() {
  while (Serial.available() <= 0) {
  Serial.println("A");   // send a capital A
  delay(300);
  }
}

