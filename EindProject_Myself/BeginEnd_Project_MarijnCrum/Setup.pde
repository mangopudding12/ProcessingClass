
void setup() 
{
   // size of the screen. 
   size(1200,600);
   
   
   // Arduino stuff 
   String portName = Serial.list()[0];
   myWhale = new Serial(this, portName, 9600);
   myWhale.bufferUntil('\n'); // read until the end of the line
   
   
   // How much walls 
   HowMuch_Objects = 3; 
   
   
   // Making the Player. 
   MainPlayer = new Player (100,200,50,50);
   Enemy = new Player (70,100,20,40);
  
  
   // Making the objects walls and ground plate. 
   Objects = new Muren[HowMuch_Objects]; 
   Objects[0] = new Muren(500,310,90,280); // wall  
   Objects[1] = new Muren (900,310,90,280); // wall
   Objects[2] = new Muren(1300,350,90,280); // wall
   
   grond = new Ground (0,580,1200,20); // ground
   STARTbutton = new reset (); // Start again button when you losed the game.
   GameOver = false; 
   
   
   // Timer 
   TTimer = new Timer(2000); // 2 muniuten  
   
   // Font 
   Tfont = loadFont("Balloons-48.vlw");
   
   // Servo 
   tellen = 0; 
}
