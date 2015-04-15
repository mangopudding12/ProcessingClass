
  class Animal 
  {
    
    // Data aanmaken 
    Kat poekoe; 
    walvis walvis2; 
    
    
    // Constuctor  setup 
    Animal () 
    {
      poekoe = new Kat (); 
      walvis2 = new walvis(); 
    } 
    
    void display() 
    {
//        if ()
//        {  
          poekoe.display();
//        } else {
          walvis2.display();
//        }  
    }
    
    void spagetti () 
    {
       if (keyPressed)
       {
          if (key == 'a' || key == 'A')
          {
               poekoe.eat();   
          } 
       }
      
    }
    
    
    
    
    
  }
