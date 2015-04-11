
import processing.core.*;

public class fish extends Animals{

	public PApplet Rat; 
	PImage fish1;
	
	// Contructor
	fish (PApplet Rat_) 
	{
		super(Rat_);
		Rat = Rat_; 
		
		fish1 = Rat.loadImage ("12.jpg");
	}
	
	// This display function overwrite the display function from the Animal class. 
	public void display(float x, float y, float breedte, float lengte) 
	{
		Rat.image(fish1,x,y,breedte,lengte); 
	}
}
