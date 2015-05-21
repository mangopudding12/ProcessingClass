

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
}


void draw() 
{
    // Reading data form arduino 
    if(portStream != null) 
    {
                if(portStream.charAt(0) == 'S' ) 
                {
                     if (onetimee == 0)
                     {
                          actiefjump = true;
                          onetimee = 1; 
                     } 
                } else {
                           
                     if (onetimee == 1)
                     {
                          onetimee = 0; 
                          actiefjump = false;
                     }
                }  

                        
  if (GameOver == false)
  {
        
       // The background per frame opnieuw getekend. 
       background(255);
      
       // Making the gravity alive so that you can jump
       PVector gravity = new PVector(0,0.15); 
       MainPlayer.applyForce(gravity);   
              
       MainPlayer.PossibleJump();
       MainPlayer.jump(); // Het werkt als het hier staat. 
       MainPlayer.PossibleMove();     
       MainPlayer.move();  
       MainPlayer.display();  
       
       
// --------------------------------------------- For loop part ---------------------------
       // Drawing the walls    
       for (int p = 0; p < HowMuch_Objects; p++)
       {

           // Grond collsion 
           if (MainPlayer.Location.x < grond.xground + grond.breedte && MainPlayer.Location.x + MainPlayer.breedte > grond.xground + 2 && MainPlayer.Location.y + MainPlayer.hoogte > grond.yground - MainPlayer.jumpVelocity.y)
           { 
                MainPlayer.Location.y = (grond.yground-MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                MainPlayer.ground2 = true;
                //println("grondbovenop");
                //println( MainPlayer.ground2);
           }
           
           // Collision detection between objects and player. 
           // Deze collision detects de bovenkant wall. 
           if (MainPlayer.Location.x < Objects[p].xmuur + (Objects[p].breedte - MainPlayer.topSpeed)  && MainPlayer.Location.x + MainPlayer.breedte > (Objects[p].xmuur + (MainPlayer.topSpeed+10)) && MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y)
           { 
                       MainPlayer.Location.y = (Objects[p].ymuur-MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                       //println("Bovenop");
                       MainPlayer.ground = true;
                       //println(MainPlayer.ground);
           } 
           
               // Linkerkant wall 
               else if (MainPlayer.Location.x + MainPlayer.breedte > Objects[p].xmuur && MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < Objects[p].xmuur)
               {
                    MainPlayer.Location.x = Objects[p].xmuur - MainPlayer.breedte; 
                    //println("Linkerkant");
                    MainPlayer.ground = false;
               }
               
               // Rechterkant wall
               else if (MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < Objects[p].xmuur + Objects[p].breedte && MainPlayer.Location.x > Objects[p].xmuur)
               { 
                    MainPlayer.Location.x = Objects[p].xmuur + Objects[p].breedte;
                    //println("Rechterkant");
                    MainPlayer.ground = false;
               }            

           // This function look at the player when it move out the screen. 
           // Then you are game over. 
           if (MainPlayer.Location.x + MainPlayer.breedte < 0)
           {
               //println("game over");
               
               // This set the player again in de middle of the screen. 
               MainPlayer.Location.x = 600; 
               MainPlayer.Location.y = 200; 
 
               GameOver = true; 
           }
        
              // Making the walls and the ground.
              Objects[p].outScreen();
              MakingTheGameAwesomeStuff(); 
              Objects[p].move();
              noStroke();  
              Objects[p].display(90,200,250);
              
        } // end forloop
  
        grond.display(250,120,10);
        
        
  } else { // GameOver == true
  
       // Making the gravity alive so that you can jump
       PVector gravity = new PVector(0,0.15); 
       MainPlayer.applyForce(gravity);   
              
       MainPlayer.PossibleJump();
       MainPlayer.jump();     
       MainPlayer.move();  
       MainPlayer.display(); 
       
       MainPlayer.SpeedSpeed = 0; // reset speed walls 

       STARTbutton.Touch();
       STARTbutton.display(850,470,53,120);        
       rect (750,470,53,120);
       rect (750,470,130,60);
       fill (255,0,0);
       triangle(750, 470, 825, 350, 901, 470);
       
 
       grond.display(250,120,10);
               
       // Grond collsion 
       if (MainPlayer.Location.x < grond.xground + grond.breedte && MainPlayer.Location.x + MainPlayer.breedte > grond.xground + 2 && MainPlayer.Location.y + MainPlayer.hoogte > grond.yground - MainPlayer.jumpVelocity.y)
           { 
                MainPlayer.Location.y = (grond.yground-MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                MainPlayer.ground2 = true;
                //println("grondbovenop");
                //println( MainPlayer.ground2);
           }
                                          
        // Makes the background white __ That is the game over look. 
        fill (255,255,255,140);
        rect (0,0,width,height); 
        
  } // end game over 
 }  // end of data reading.
}  


