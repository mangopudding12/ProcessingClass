

import processing.core.PApplet;


public class WalkerClass {
	
	// Data 
	PApplet parent; // The parent PApplet that we will render ourselves onto
	int x; 
	int y; 
	float speed;
	
	// Constuctor function 
	WalkerClass(PApplet p) {
	    parent = p;
	    x = (int) parent.random (100,600);
	    y = (int) parent.random (100,600); 
	    speed = 2;
	  }
	
	// Draw 
	  void display() {
	    parent.fill(255,100,90);
	    parent.rect(x,y,30,30);
	  }

	  // Move 
	  void move() {
		  
		  x += speed; 
		  
		  if (x > 600 || x < 0)
		  {
			  speed = speed * -1; 
		  }
	  }
}
