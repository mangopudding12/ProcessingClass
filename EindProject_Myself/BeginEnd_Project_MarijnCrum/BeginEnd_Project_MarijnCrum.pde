
// Important comments !!!!!!!!!! 

// Ga opzoeken hoe ik ook alweer een array maak 
// Ga opzoeken hoe ik ook alweer tegen die aparte array elementen kan praten. 
// Ga kijken hoeveel muren ik uberhoud nodig heb 
// Ga alles testen Good luck 







// Making the player. 
Player StoneWoman; 

// Making the walls 
walls  wal;

// Variables for the screen bigness
int xScreen; 
int yScreen; 

// Levelhigh so you dificult the level will be. 
int level; 

void setup() 
{
  // Given the screen bigness numbers
  xScreen = 1400; 
  yScreen = 800; 
  
  // size of the screen. 
  size (xScreen,yScreen); 
  
  // Making the StoneWoman player - giving it x _ y _ witch _ height
  StoneWoman = new Player(xScreen-840,yScreen-350,80,120); 
  
  // Making the walls 
  wal = new walls (1000,yScreen - 470,80,240);
  
  level = 90;
}


void draw() 
{
  background(255);
  
  StoneWoman.display(); 
  wal.display();
  wal.move();
  
  
  // Here the walls out side the screen must killed.................
  if (wal.Dead == true)
  {
     println("Dead is treu");
     
     // Bring the wall back to 1450... recycling of the walls. 
     wal.xWal = 1450;
     
     // This change the wall. 
     float Randomness_Newlocation = random (0,150); 
     
     // Changing the y position of de wall and the high of the wall. SO that is stay on the some y postion as the player. 
     wal.yWal = (yScreen - 470) + Randomness_Newlocation;
     wal.hWal = 240 - Randomness_Newlocation;
     
     // De witch of the Wall makes it harder to jump over it. --- Levels how higher de level how the witch grow biger !!! 
     wal.bWal = (80 + Randomness_Newlocation)-  level; 
     
     // Zet the boolean again on false so that the walls can move again. Looping !!
     wal.Dead = false;
  }     
}
