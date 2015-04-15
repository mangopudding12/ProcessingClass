


  class Kat 
  {
     // data 
     float x; 
     float y;
     float breedte;
     float hoogte;
   
     // Constuctor 
     Kat() 
     {
         x = 80; 
         y = 90; 
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
         println("Hoi ik ben kat"); 
         breedte += 2; 
         hoogte += 2;
     }
  }
