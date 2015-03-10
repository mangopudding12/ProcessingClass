

// Processing Liberia 
	import processing.core.*;

// Class 
	public class Creature {
			
		// Data valuas from class
		public PApplet p; 
		public float xx_Creature;
		public float yy_Creature;
		public int 	big_Creature; 
		
		
		// Contructor function___ setup class
		Creature (PApplet p_){
			
			// It is important that this stand first or else you get error
			p = p_;
			
			xx_Creature = p.random(200,400);
			yy_Creature = p.random(200,400);
			big_Creature = (int) p.random(50,100);
		}
		
		// How the creature looks like. 
		public void display(){
			p.fill (190,90,90);
			p.ellipse(xx_Creature,yy_Creature,big_Creature,big_Creature);
		}
	
	
	}
