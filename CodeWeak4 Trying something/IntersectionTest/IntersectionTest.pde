

// Ball class aanmaken 
Balls ball1; 
Balls ball2; 


void setup() {
  size (600,600);
  smooth();

  ball1 = new Balls (random (30,50)); 
  ball2 = new Balls (random (40,65));   
}


void draw() {
  background (0);
  
  ball1.move(); 
  ball2.move(); 
  

   if (ball1.intersect (ball2)) {
     ball1.highlight(); 
     ball2.highlight(); 
   }
   
   ball1.display(); 
   ball2.display(); 
} 

  
  
  
    
  
