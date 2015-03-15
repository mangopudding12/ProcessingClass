

import processing.core.*; 

// extends give premission to use parent information. 
// PApplet is de parent 
public class This_A_Life extends PApplet{

	public Creature Garnaal; 
	String TalkingText; 
	String TalkingText2;
	PFont myFont;
	PFont myFontBig;
	PFont Healty; 
	
	int state; 
	int GrowingState; 
	
	float dying;
	int dyingState;
	PImage img;
	String health; 

	String help; 
	
	// This line of code show you all your Font on your computer
	// String[] fontList = PFont.list();
	
	
	public void setup() {
		
		size (600,600);
		
		// This is pionting to the parent. 
		// It is pass by reference It is pass the PApplet it self. 
		Garnaal = new Creature (this);	
		
		  // Here do you print al the fonts you have on your computer 
		  //println(fontList);
		
		  // This are the textstate 
		  state = 0;
		  dying = 0;
		  GrowingState = 0; 
		
		  myFont = createFont("Something in the way", 72);
		  myFontBig = createFont("Something in the way", 120);
		  Healty = createFont("Arial", 20);	  
		  
		  help = "JA";
	}
	
	
	public void draw() {		
	background (255);
		
	
	// This are de state of the player Gerbil 
        if (state == 0){
        	  background (255);			
			  fill (0);
			  textFont(myFont);
			  TalkingText = "Press on a key";
			  text(TalkingText, 5, 50);
        	
	    }else if (state == 1){
			  //background (255);			
			  textFont(myFont);
		      TalkingText = "Are you my mommy??";
			  text(TalkingText, 10, 200);
			
			  dyingState = 0;
			  
		} else if (state ==2){
			  background (255);			
			  textFont(myFont);
			  TalkingText = ("I love you mommy");
			  text(TalkingText, 10, 200);
			  
		} else if (state ==3){
			
			  background (255);			
			  textFont(myFont);
			  TalkingText = ("I am so hungry, mommy");
			  text(TalkingText, 10, 200);
			  
			  dyingState = 1;
			  
			  if (Garnaal.big_Creature > 130) {
			     dying = 3f;
				 Garnaal.big_Creature -= dying;	
			  } else {
				  dying = 0; 
			  }
			  
		} else if (state == 4) {
			  background (255);			  
			  textFont(myFont);		
			  TalkingText = ("I am dying");
			  text(TalkingText, 10, 200);
			  
			  dyingState = 2;
			  
				  if (Garnaal.big_Creature > 60) {
					  dying = 5f; 
					  Garnaal.big_Creature -= dying;
				  } else {
					  dying = 0; 
				  }
			  
		} else if (state == 5){
			  background (255);			
			  textFont(myFont);
			  TalkingText = ("Please give me some food");
			  text(TalkingText, 10, 200);
			  
			  if (Garnaal.big_Creature > 40) {
				  dying = 2f; 
				  Garnaal.big_Creature -= dying;
			  } else {
				  dying = 0; 
			  }
			  
		} else if (state == 6) {
			  background (255);			
			  textFont(myFont);
			  fill (0);
			  TalkingText = "Press on the f button";
			  TalkingText2 = "To give your gerbil food";
			  text(TalkingText, 5, 50);
			  text (TalkingText2,5,120);
			  
			  if (Garnaal.big_Creature > 25) {
				  dying = 0.5f; 
				  Garnaal.big_Creature -= dying;
			  } else {
				  dying = 0; 
			  }
			  
		} else if (state == 7) {
			
			dyingState = 3;
			
			if (Garnaal.big_Creature > 0) {
				  dying = 2f; 
				  Garnaal.big_Creature -= dying;
			  } else {
				  dying = 0; 
				  
				  textFont(myFontBig);
				  fill (0);
				  TalkingText = "Game Over";
				  text(TalkingText, 150, 300);
			  }
		}
		
       
        
        // Growing state 
        if (GrowingState == 1){

			if (Garnaal.big_Creature < 12) {
				  dying = 19f; 
				  Garnaal.big_Creature += dying;
				  
			  } else if (Garnaal.big_Creature < 60 && Garnaal.big_Creature > 10){
				  dyingState = 2;
				  dying = 10f; 
				  Garnaal.big_Creature += dying;
				  
			  } else if (Garnaal.big_Creature > 58 && Garnaal.big_Creature < 150){
				  dyingState = 1;
				  dying = 14f; 
				  Garnaal.big_Creature += dying;	
				  
			  } else if (Garnaal.big_Creature > 148 && Garnaal.big_Creature < 201){
				  dyingState = 0;
				  dying = 20f; 
				  Garnaal.big_Creature += dying;	
				  
        	  }else { 
				  dying = 0; 
				  GrowingState = 0;
				  dyingState = 0;
				  state = 2; 
			  }
        }
        
        
        
		// De healty smaleys 
		if (state > 0 && dyingState == 0)
		{
			Garnaal.display(); 
			
			img = loadImage("Happy.png");
			image(img, 480, 530,70,70);
			textFont(Healty);
			health = "Healty: Good";
			text (health,460,525); 
			
		} else if (dyingState == 1) {
			Garnaal.display(); 
			
			img = loadImage("Hungry.png");
			image(img, 480, 530,70,70);
			textFont(Healty);
			health = "Healty: hungry";
			text (health,430,525); 
			
		} else if (dyingState == 2){
			Garnaal.display(); 
			
			img = loadImage("NotHappy.png");
			image(img, 480, 530,70,70);
			textFont(Healty);
			health = "Healty: Very hungry";
			text (health,410,525); 
		
		} else if (dyingState == 3){
			Garnaal.display(); 
			
			img = loadImage("Dead.png");
			image(img, 480, 530,70,70);
			textFont(Healty);
			health = "Healty: Dead";
			text (health,450,525); 
		}
}
			
	
	
	
	public void keyPressed() {

		state ++; 
		
		// This is the key for giving food. 
		if (key == 'f' || key == 'F') {
			GrowingState = 1;
		}		
	}
	
	
}
