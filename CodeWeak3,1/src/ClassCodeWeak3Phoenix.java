

import processing.core.*;



// Best viewer this code is not compleet from me. 
// The brightness traking is from  ignazkevenaar
// https://github.com/ignazkevenaar/brightestPixel/commit/5a3671a3e4ea017a4ffb70f651f942abd5b935b4

public class ClassCodeWeak3Phoenix extends PApplet {

	// say to computer this are image's
	PImage img; 
    PImage img2; 	
    PImage img3;
    PImage img4;
    
    
	public void setup () {
		
		size (600,600);
		
		// Picture 1 
		img = new PImage(); 
		img = loadImage ("hoi.jpg");  
		
		// Picture 2 
		img2 = new PImage(); 
		img2 = loadImage("blub.jpg");
		
		// Picture 3 
		img3 = new PImage(); 
		img3 = loadImage("kango.jpg");
		
		// Picture 4 
		img4 = new PImage(); 
		img4 = loadImage("haha.jpg");
		
	}
	
	public void draw() {
		
		// Making the image
		// I discover something new .. 
		// img = picture  0= x  0= y 300= width 300=height 
		image (img,0,0,300,300); 
		image (img2,300,300,300,300); 
		image (img3,0,300,300,300);
		image (img4,300,0,300,300);
		
		loopTrough_Img();
		loopTrough_Img2();
		loopTrough_Img3();
		loopTrough_Img4();
	}
	
	// hoi image left up 
	public void loopTrough_Img()
 	{
		//X coordinate of brightest pixel
 		int pixelX = 0;
		//Y coordinate of brightest pixel
 		int pixelY = 0;
		//current brightest pixel value
 		int oldC = 0;
 
		//for each row of pixels
 		for (int i = 0; i < 300; i++)
 		{
			//for each pixel in a single row
 			for (int j = 0; j < 300; j++)
 			{
				//get color of pixel in x(j) and y(i) coordinate
 				int c = get(j, i);
 				//get red value of color
 				int r = (int)red(c);
				//get green value of color
 				int g = (int)green(c);
				//get blue value of color
 				int b = (int)blue(c);
 				
				//add all these values together for comparison
 				c = r+g+b;
 				
				//if the color of the current pixel is brighter than the last pixel measured then
 				if (c > oldC)
 				{
					//the current color is the new brightest pixel
 					oldC = c;
					//save the X coordinate
 					pixelX = j;
					//save the Y coordinate
 					pixelY = i;
 				}
 			}
 		}
	
 		//draw an ellipse at the X and Y coordinates of the brightest pixel
 		fill (90,pixelX,100);
 		ellipse(pixelX, pixelY, 10, 10);
 	}	


// blub image right under 
public void loopTrough_Img2()
	{
	//X coordinate of brightest pixel
		int pixelX = 0;
	//Y coordinate of brightest pixel
		int pixelY = 0;
	//current brightest pixel value
		int oldC = 0;

	//  y pixels 
		for (int i = 300; i < 600; i++)
		{
		//  x pixels 
			for (int j = 300; j < 600; j++)
			{
			//get color of pixel in x(j) and y(i) coordinate
				int c = get(j, i);
				//get red value of color
				int r = (int)red(c);
			//get green value of color
				int g = (int)green(c);
			//get blue value of color
				int b = (int)blue(c);
				
			//add all these values together for comparison
				c = r+g+b;
				
			//if the color of the current pixel is brighter than the last pixel measured then
				if (c > oldC)
				{
				//the current color is the new brightest pixel
					oldC = c;
				//save the X coordinate
					pixelX = j;
				//save the Y coordinate
					pixelY = i;
				}
			}
		}

		//draw an ellipse at the X and Y coordinates of the brightest pixel
		fill (90,pixelX,100);
		ellipse(pixelX, pixelY, 10, 10);
	}	

// left under image 
public void loopTrough_Img3()
{
//X coordinate of brightest pixel
	int pixelX = 0;
//Y coordinate of brightest pixel
	int pixelY = 0;
//current brightest pixel value
	int oldC = 0;

//   y pixel 
	for (int i = 300; i < 600; i++)
	{
	//  x pixel 
		for (int j = 0; j < 300; j++)
		{
		//get color of pixel in x(j) and y(i) coordinate
			int c = get(j, i);
			//get red value of color
			int r = (int)red(c);
		//get green value of color
			int g = (int)green(c);
		//get blue value of color
			int b = (int)blue(c);
			
		//add all these values together for comparison
			c = r+g+b;
			
		//if the color of the current pixel is brighter than the last pixel measured then
			if (c > oldC)
			{
			//the current color is the new brightest pixel
				oldC = c;
			//save the X coordinate
				pixelX = j;
			//save the Y coordinate
				pixelY = i;
			}
		}
	}

	//draw an ellipse at the X and Y coordinates of the brightest pixel
	fill (250,pixelX,0);
	ellipse(pixelX, pixelY, 10, 10);
}	

// right up image 
public void loopTrough_Img4()
{
//X coordinate of brightest pixel
	int pixelX = 0;
//Y coordinate of brightest pixel
	int pixelY = 0;
//current brightest pixel value
	int oldC = 0;

//  y pixels 
	for (int i = 0; i < 300; i++)
	{
	//   x pixels 
		for (int j = 300; j < 600; j++)
		{
		//get color of pixel in x(j) and y(i) coordinate
			int c = get(j, i);
			//get red value of color
			int r = (int)red(c);
		//get green value of color
			int g = (int)green(c);
		//get blue value of color
			int b = (int)blue(c);
			
		//add all these values together for comparison
			c = r+g+b;
			
		//if the color of the current pixel is brighter than the last pixel measured then
			if (c > oldC)
			{
			//the current color is the new brightest pixel
				oldC = c;
			//save the X coordinate
				pixelX = j;
			//save the Y coordinate
				pixelY = i;
			}
		}
	}

	//draw an ellipse at the X and Y coordinates of the brightest pixel
	fill (120,pixelX,200);
	ellipse(pixelX, pixelY, 10, 10);
}	
}
