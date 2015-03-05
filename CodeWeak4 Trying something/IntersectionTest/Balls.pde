



class Balls 
{
     // Variabelen 
      float r; 
      float x,y; 
     float xspeed,yspeed; 
      color c = color (200,101,10);    
  
     // Constructor Functie 
     Balls (float radiusBall) 
     { 
       r = radiusBall;
       x = random(width); 
       y = random (height);    
      
       xspeed = (random (-10,10))+1; 
       yspeed = (random (-8,8))-1;  
     } 


    // Beweeg Functie 
    void move()
    { 
       x += (xspeed); 
       y += (yspeed);
  
 
      if (x < 0 || x > width)
      {
          xspeed *= -1; 
      }
     
     if (y < 0 || y > width)
      {
          yspeed *= -1; 
      }       
    }  
   
   
 void highlight () {
     c = color (200,10,100);    
 }  
  
    // Afbeelding Functie 
    void display()   
    {
      fill (c);
      ellipse (x,y,r*2,r*2); 
      c = color (200,101,10);  
    }
   
   
   // boalean 
   boolean intersect (Balls b) 
   {
       float distance = sqrt ((x-b.x)*(x-b.x) + (y-b.y)*(y-b.y));
       
        if (distance < r + b.r){
         return true; 
       } else {
         return false; 
       }       
        
   }
   
 
    
}
