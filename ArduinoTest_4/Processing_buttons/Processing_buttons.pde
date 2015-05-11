
// Import the serial port liberia
// else he don't understand something from the serial data we are sending.
// Fase 1__ liberia 
import processing.serial.*;

// Fase 2 __ make object from serial port
Serial cat; 

// Fase 3 __ make a string for the data from the serial port
String gettingData;

// Fase 4 __ Make the buttons. 
int button1 = 0;
int button2 = 0; 

void setup () 
{
  size(380,200);
  background(255);
  
  // Fase 5 __ Make a string for your serial port.
  // Your are giving your serial port a name  
  String MySerialPort = Serial.list()[0]; // My serialport is on 0
  
  // Fase 5__Computer know go looking for data until ... and than you can do other stuff. 
  // Go go with getting data from serial port until you get to a new line. 
  MySerialPort.bufferUntil ('\n'); 
} 

void draw() 
{
    // If the pc has all the data from the serial port.
    // than runn is function. 
    // Fase 6__Begin if you have some data.   
    if (gettingData != null)
    {
        
    }
}
