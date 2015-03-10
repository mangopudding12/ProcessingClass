

import processing.core.*; 

// extends give premission to use parent information. 
// PApplet is de parent 
public class This_A_Life extends PApplet{

	public Creature Garnaal; 
	public String hello; 
	PFont f;
	
	public void setup() {
		
		f = loadFont ("ArialMT-16.vlw");
		size (600,600);
		// This is pionting to the parent. 
		// It is pass by reference It is pass the PApplet it self. 
		Garnaal = new Creature (this);
		
	}
	
	
	public void draw() {
		textFont(f,16); 
		
		text("kan je dit zien ?",200,200);
		Garnaal.display(); 
	}
}
