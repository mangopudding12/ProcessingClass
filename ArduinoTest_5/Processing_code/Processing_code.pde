import processing.serial.*;

Serial myPort;
String portStream;

void setup() 
{
  size(380,200);
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}

void draw () 
{
  background (0); 
    if(portStream != null) {
    
      println(portStream);
      println(portStream.length());
      
    if(portStream.charAt(0) == 'S' ) 
    {
      rect(20,20,160,160);
    } 
       
    }
}


void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}
