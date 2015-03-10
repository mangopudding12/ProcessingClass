

import processing.core.*;

// extends = give to premissen to use the parent information. 
// PApplet is like a parent !!! it is giving the childer funtions

// homework let the cat do something 
public class CodeWeak5_Hamster extends PApplet {

	public Pet cat; 
	
	
	public void setup () {
		
	   // This pioting to the parent = The parent is PApplet. 
	   // this pass by refenrence, so it pass the liberia it self to this page. 
	   cat = new Pet (this); 
	}
	
	public void draw () { 
		
	}
	
}
