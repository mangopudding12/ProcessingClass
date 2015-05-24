void draw() 
{  
  
  background(255);
    // Reading data form arduino 
    if(portStream != null) 
    {
                if(portStream.charAt(0) == 'S' ) // When getting S you are posible to jump
                {
                     if (onetimee == 0)
                     {
                          TTimer.reachedTime = false; 
                          actiefjump = true;
                          onetimee = 1; 
                     } 
                } else {     
                     if (onetimee == 1)
                     {
                          onetimee = 0; 
                          println("Reset Timer");
                          TTimer.tijdStart(); // reset Timer 
                     }
                     
                          println("Tikking Timer");
                          TTimer.Tikking();
                          
                          if (TTimer.reachedTime == true)
                          {
                            textFont(Tfont, 32);
                            fill(0);
                            text("You can jump", 10, 50);
                          }
                }  

                        
  if (GameOver == false)
  {
        
       // The background per frame opnieuw getekend. 
     
      
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


