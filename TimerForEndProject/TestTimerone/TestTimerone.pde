
Timer Tijd; 

void setup () 
{
   size (600,600);
   Tijd = new Timer(1000); 
   
   Tijd.tijdStart();
}


void draw () 
{
  Tijd.Tikking();
  
  
  if (Tijd.reachedTime == true)
  {
    Tijd.reachedTime = false;
    println("pressed mouse pleas");
  }
}



void mousePressed() 
{
       if (Tijd.reachedTime == false)
       {
            Tijd.tijdStart();
            println("Reset time");
       } 
}
