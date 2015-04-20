
// Important comments !!!!!!!!!! 

// Ga opzoeken hoe ik ook alweer een array maak 
// Ga opzoeken hoe ik ook alweer tegen die aparte array elementen kan praten. 
// Ga kijken hoeveel muren ik uberhoud nodig heb 
// Ga alles testen Good luck 


void setup() 
{
  // Given the screen bigness numbers
  xScreen = 1400; 
  yScreen = 800; 
  size (xScreen,yScreen); 
  
  //----------------------------------------------------------------------------------------------------
  // Making the StoneWoman player - giving it x _ y _ witch _ height
  StoneWoman = new Player(xScreen-840,yScreen-350,80,120); 
  
  //-----------------------------------------------------------------------------------------------------
  // Making the walls 
  HowMuch_walls = 10; 
  wal = new walls [HowMuch_walls];
  int k = 0; 
  
  // Making the array of walls alive 
  for (int i = 0; i < HowMuch_walls; i++)
  {
     // Hier houden de muren niet de afstand tussen elkaar !!! Ze raken elkaar als ze aan het einde van het scherm zijn. 
    
      wal[i] = new walls(1000,yScreen-470,80,240); 
      k += 900; 
      println (k);
      println(i);
  }
  
  //----------------------------------------------------------------------------------------------------- 
  level = 90;
}



void draw() 
{
  background(255);
  
  //-----------------------------------------------------------------------------------------------------------
  // This is the player. 
  StoneWoman.display(); 
  
  //-----------------------------------------------------------------------------------------------------------
  int kk =0; // Testen of ik iets kan met de afstand tussen de muren. Hoe minder afstand hoe moeilijker het is. 
  
  for (int i= 0; i< HowMuch_walls; i++)
  {      
     // Het interessante hiervan is dat alle muren deze afstand van elkaar houden. 
      wal[i].display(kk);
      kk +=100;
      wal[i].move(); 
  }
  
  
    
    
  if (wal[1].Dead == true)
  {
     println("wal1");
     println(wal[1].xWal);
  }
  
  if (wal[2].Dead == true)
  {
     println("wal2");
     println (wal[2].xWal);
  }
  
//  
//  // Here the walls out side the screen must killed.................
//  if (wal.Dead == true)
//  {
//     println("Dead is treu");
//     
//     // Bring the wall back to 1450... recycling of the walls. 
//     wal.xWal = 1450;
//     
//     // This change the wall. 
//     float Randomness_Newlocation = random (0,150); 
//     
//     // Changing the y position of de wall and the high of the wall. SO that is stay on the some y postion as the player. 
//     wal.yWal = (yScreen - 470) + Randomness_Newlocation;
//     wal.hWal = 240 - Randomness_Newlocation;
//     
//     // De witch of the Wall makes it harder to jump over it. --- Levels how higher de level how the witch grow biger !!! 
//     wal.bWal = (80 + Randomness_Newlocation)-  level; 
//     
//     // Zet the boolean again on false so that the walls can move again. Looping !!
//     wal.Dead = false;
//  }     
}
