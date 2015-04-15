  class walvis 
  {
     // data 
     float x; 
     float y;
     float breedte;
     float hoogte;
   
     // Constuctor 
     walvis() 
     {
         x = 10; 
         y = 20; 
         breedte = 20; 
         hoogte = 80; 
     }
   
     void display() 
     {
         fill (random (90), random(10),random(120));
         rect (x,y,breedte,hoogte); 
     }
     
     void eat() 
     {
         println("Hoi ik ben walvis"); 
         breedte += 2; 
         hoogte += 2;
     }
  }
