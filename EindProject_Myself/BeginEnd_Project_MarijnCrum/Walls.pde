

class walls 
{
     // walls information. 
     float yWal; 
     float xWal; 
     float hWal; 
     float bWal;  
     
     //  movement 
     float XspeedWal;  
     
     // distroy the wall
     boolean Dead; 
  
  
     // Contructor function. 
     walls(float xWal_, float yWal_, float bWal_, float hWal_) 
     {
         // Getting data form the main sketch.
         xWal = xWal_; 
         yWal = yWal_; 
         bWal = bWal_; 
         hWal = hWal_; 
         
         XspeedWal = 10; 
         
         // Boolean for distroying the wall when leave the screen. 
         Dead = false;
     }
     
     float k; 
     
     void display(float k_) 
     {
        k = k_; 
       
        fill (90); 
        noStroke();
        rect (xWal+k,yWal,bWal,hWal);
     }
     
     
     void move () 
     {
        // This is the check to see of the wall leaves the screen. 
        if ((xWal >= xScreen || xWal <= xScreen)&& xWal >= -50)
        {
            xWal -= XspeedWal; 
            println(xWal);
        }  else {
            Dead = true; 
        }     
     } 
     
     
    void distroy()
    {
              
    }
     
}
