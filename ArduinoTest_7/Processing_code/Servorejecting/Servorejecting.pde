import processing.serial.*;

Serial whalefish;     // give port a name 
String SerialStream;  // string form the port
int vis = 0; 

void setup () 
{
   size (900,900); 
   
   println(Serial.list());
    
   // Arduino stuff 
   String Name = Serial.list()[0];
   whalefish = new Serial(this, Name, 9600);
   whalefish.bufferUntil('\n'); 
  
}

void draw() 
{
  background(0);
  
    // If we get data 
    if(SerialStream != null) 
    {
         println(SerialStream);
         
         if(SerialStream.charAt(0) == 'S' ) // When getting S you are posible to jump
         {
           rect (90,90,90,90);   
         }
         
         if(SerialStream.charAt(0) == 'D' ) // When getting S you are posible to jump
         {
           ellipse(90,90,90,90);
         }
    }
}


void mousePressed() 
{
   vis = 
}

