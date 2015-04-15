

 class Player 
 {
     // Colors of the player.
     float kleur1; 
     float kleur2;
     float kleur3; 
     
     // Data of the player. 
     float xPlayer; 
     float yPlayer; 
     float witch; 
     float high; 
  
  
     // Constructor 
     Player (float x_Player, float y_Player, float witch_, float high_) 
     {
       // So you get data from the main class. 
       xPlayer = x_Player; 
       yPlayer = y_Player; 
       witch = witch_; 
       high = high_; 
     }
 
     void display()
     {
        fill (kleur1,kleur2,kleur3);
        rect (xPlayer,yPlayer,witch,high); 
     }
  
     void jump()
     {
     } 
 }
