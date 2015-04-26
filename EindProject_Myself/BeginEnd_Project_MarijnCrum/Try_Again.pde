
class reset 
{
  float xreset; 
  float yreset; 
  float breset; 
  float hreset; 
  
  reset () 
  {
      
  }
  
  void display(float xreset_,float yreset_,float breset_,float hreset_) 
  {
    xreset = xreset_; 
    yreset = yreset_; 
    breset = breset_; 
    hreset = hreset_; 
    
    fill (150,50,200); 
    rect(xreset,yreset,breset,hreset);
  }
 
  void Touch () 
  {
      
           // Collision detection between objects and player. 
           // Deze collision detects de bovenkant wall. 
           if (MainPlayer.Location.x < xreset + (breset - MainPlayer.topSpeed)  && MainPlayer.Location.x + MainPlayer.breedte > (xreset + (MainPlayer.topSpeed+1)) && MainPlayer.Location.y + MainPlayer.hoogte > yreset - MainPlayer.jumpVelocity.y)
           { 
                       MainPlayer.Location.y = (yreset - MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                       println("Bovenop");
                       MainPlayer.ground = true;
                       println(MainPlayer.ground);
           } 
           
               // Linkerkant wall 
               else if (MainPlayer.Location.x + MainPlayer.breedte > xreset && MainPlayer.Location.y + MainPlayer.hoogte > yreset - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < xreset)
               {
                    MainPlayer.Location.x = xreset - MainPlayer.breedte; 
                    println("Linkerkant");
                    MainPlayer.ground = false;
                    
                    // if You touch the left side the game begins again. 
                    // You reset the game. 
                    GameOver = false;
               }
               
               // Rechterkant wall
               else if (MainPlayer.Location.y + MainPlayer.hoogte > yreset - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < xreset + breset && MainPlayer.Location.x > xreset)
               { 
                    MainPlayer.Location.x = xreset + breset;
                    println("Rechterkant");
                    MainPlayer.ground = false;
               }   
               
               
  }
   
} // end class reset
