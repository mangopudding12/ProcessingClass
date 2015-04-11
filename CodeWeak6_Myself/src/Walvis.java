
import processing.core.*;

public class Walvis extends Animals{

	public PApplet sok; 
	PImage walvis1;  
	
	// Contructor
	Walvis(PApplet sok_)
	{
		super(sok_);
		sok = sok_;
		
		walvis1 = sok.loadImage ("awesome.jpg");
	}
	
	public void display(float x, float y, float breedte, float lengte) 
	{
		sok.image(walvis1,x,y,breedte,lengte);
	}
}
