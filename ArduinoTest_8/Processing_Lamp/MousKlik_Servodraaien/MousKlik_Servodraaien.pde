import processing.serial.*;

Serial myPort;  // Create object from Serial class
int hoeveel = 0; 

void setup() 
{
  size(200,200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  //println(Serial.list());
  

  
    
}

void mousePressed () 
{
  println(hoeveel); 
  
   if (hoeveel == 0)
   {
      myPort.write('2');         //send a 1
      println("2"); 
   } 
   
   if (hoeveel == 1)
   {
      myPort.write('1');         //send a 1
      println("1");   
   }
}

void mouseReleased () 
{
     if (hoeveel == 0)
     {  
        hoeveel = 1; 
     } else {
        hoeveel = 0; 
     }
}
