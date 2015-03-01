

import processing.core.*;


public class BluePixelWeak3 extends PApplet {

	PImage hoi;  
	
	public void setup() {
		size (600,600); 
		
		
		hoi = new PImage(); 
		hoi = loadImage ("hihi.jpg");  
	}
	
	public void draw() {
		image (hoi,0,0,600,600); 
		
		FindBluePixel(); 
	}
	
	
	public void FindBluePixel() {
		
		// THis are the pixels 
		int xxPixel = 0; 
		int yyPixel = 0; 
		
		// this are the color green and red set to 0. 
		// Because I only want red
		int green = 0; 
		int blue = 0; 
		
		int oldPixelG = 0; 
		
		// Here I am looking overall the pixel witch pixel is the most red. 
		for (int x=0; x < 600; x++){
			for (int y=0; y < 600; y++){
				
				int g = get (x,y); 
				
				int r = (int)red(g);
				
				g = r + green + blue; 
				fill (r,green,blue);
				
				if (g > oldPixelG) {
					
					oldPixelG = g; 
					
					// Remember the location from the most blue pixel 
					xxPixel = x; 
					yyPixel = y; 
				}
			}
		}
		
		//draw an ellipse at the X and Y coordinates of the brightest pixel
		 
 		ellipse(xxPixel, yyPixel, 10, 10);
	}
	
}

