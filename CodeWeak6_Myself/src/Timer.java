
import processing.core.*;

public class Timer {
  
	public PApplet kip;
	
	int savedTime; 
	int totalTime; 
	boolean DeadEnd;
	int passedTime;
	
	
	Timer (PApplet kip_, int HowMuchTime)
	{
	
		
		
		
		
		
		
		
		kip = kip_;
		
		// Setting How much Time it have 
		totalTime = HowMuchTime;
		DeadEnd = false; 
	}
	
	public void Start() 
	{
		savedTime = kip.millis(); 
	}
	
	// Function when the Time have the right value than. 
	public void TimeCounter()
	{
		// Here we are calculate wat the passedTime is very time draw is looping in main.java. 
		passedTime = kip.millis() - savedTime; 
		
		// When the passedTime is biger than TotalTime that we set in de main.jave than kill the animal. 
		if (passedTime > totalTime)
		 {
			DeadEnd = true; 
		 }
//		else 
//		 {
//			DeadEnd = false; 
//		 }
	}
	
} // end class 
