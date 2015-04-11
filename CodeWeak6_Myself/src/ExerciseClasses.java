
import processing.core.*;

public class ExerciseClasses extends PApplet {

	Animals fishh; 
	Animals Walviss; 
	Timer TTimer;
	
	
	
	public void setup()
	{
		size(800,800);
		
		// Making the things 
		fishh = new fish(this);
		Walviss = new Walvis(this);
		TTimer = new Timer(this,5000);
		
		// Start the TTimer. 
		TTimer.Start(); 
	}
	
	public void draw ()
	{
		background(0);
		TTimer.TimeCounter();
		
			println(TTimer.passedTime);
			println(TTimer.DeadEnd);
		
		if (TTimer.DeadEnd == true)
		{
			// So you can see I want my picuture there of there. 
			fishh.display(300,300,200,200);
		} 
		else if (TTimer.DeadEnd == false)
		{
			Walviss.display(100,25,450,250);
		}
		
		
		
	}
}
