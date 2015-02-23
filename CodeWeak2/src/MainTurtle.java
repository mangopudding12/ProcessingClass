

import processing.core.*; 

public class MainTurtle extends PApplet{

	WalkerClass[] Walkers = new WalkerClass[10];
	
	
	public void setup () {
		size (600,600); 
		background(90,100,150);
		
		for (int i = 0; i < Walkers.length; i++) {
		      Walkers[i] = new WalkerClass (this);
		    }
	}
	
	public void draw () {
		for (int i = 0; i < Walkers.length; i++) {
		      Walkers[i].move();
		      Walkers[i].display();
		    }
	}
}

