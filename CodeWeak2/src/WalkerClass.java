

import processing.core.PApplet;


public class WalkerClass {
	
	// Data 
	PApplet parent; // The parent PApplet that we will render ourselves onto
	int x; 
	int y; 
	float speed;
	float kleur; 
	float kleur2; 
	
	// Constuctor function 
	WalkerClass(PApplet p) {
	    parent = p;
	    x = (int) parent.random (300,320);
	    y = (int) parent.random (300,310); 
	    speed = 2;
	    kleur2 = parent.random (0,255);
	    
	  }
	
	// Draw 
	  void display() {
	    parent.fill(kleur,kleur2,90,kleur);
	    parent.rect(x,y,30,30);
	  }

	  // Move 
	  void move() {
		  
		  // De walker walk a random way 
		  float speedx = parent.random (-10,10); 
		  float speedy = parent.random (-10,10); 
		  kleur = parent.random (0,200);
		  
		  x += speedx; 
		  y += speedy; 
		  
		  
		  // So it bounce from the side of the screen 
		  if (x < 0 || x > 600)
		  {
			  x = 600; 
			  kleur2 = parent.random (0,255);
		  }
		  
		  if (y < 0 || y > 600) 
		  {
			  y = 600;
			  kleur2 = parent.random (0,255);	  
		  }
		  
		  if (y < 5){
			  parent.background(90,100,150); 
		  }
		  
	  }
}
