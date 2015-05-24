
class Timer 
{
    int EndTime; 
    int SaveTime; 
    int PassedTime; 
    boolean reachedTime = false; 
  
  
    Timer (int tempEndTime) 
    {
        EndTime = tempEndTime;
    } 
    
    void tijdStart() 
    {
        // Give an it is millis secondens. 
        SaveTime = millis();
    }
  
    void Tikking() 
    {
         PassedTime = millis() - SaveTime;
        
         if (PassedTime >= EndTime)
         {
            // Now reset timer
            println("gehaald");
            reachedTime = true; 
         } else { 
              reachedTime = false;
         }
    }
} // end class
