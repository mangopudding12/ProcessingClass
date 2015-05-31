import processing.serial.*;

Serial myPort;  // Create object from Serial class

void setup() 
{
  size(200,200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  println(Serial.list());
  

  
    
}

void mousePressed () 
{
    myPort.write('2');         //send a 1
   println("2"); 
}
