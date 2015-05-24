
PFont font; 
PImage img; 

void setup () 
{
  size (533,780); 
  smooth(); 
  
  font = createFont ("vtksdistress-48,10"); 
  img = loadImage("blub"); 
}


void draw () 
{
  background (255); ;
  
  
  textAlign(LEFT); 

  float x = 0, y = 10; 
  int counter = 0; 

  while (y < height)
  {
     int imgX = (int) map (x,0,width,0,img.width); 
     int imgY = (int) map (y,0,height,0,img.height);
    
     color c = img.pixels[imgY*img.width+imgX]; 
     int greyscale = round (red (c)*0.222 + green(c)*0.707 + blue(c)*0.071); 
    
     pushMatrix(); 
     translate(x,y) 
     
     if (fontSizeStatic)
     { 
       textFont(font,fontSizeMax); 
       if (blackAndWhite) fill (greyscale); 
       else fill (c); 
     } else { 
       
       float fontSize = map (greyscale, 0,255, fontSizeMax, fontSizeMin); 
       fontSize = max (fontSize,1);
       textFont(font,fontSize); 
       if (blackAndWhite) fill(0); 
       else fill (c);
     }
   
   char letter = inputText.charAt(counter); 
   text (letter,0,0); 
   float letterWidth = textWidth(letter) + kerning; 
 
    x = x + letterWidth; 
  popMatrix();   
       
       if (x + letterWidth >= width)
       {
         x = 0; 
         y = y + spacing; 
       }
       
       counter ++; 
       if (counter > inputText.length() -1)) counter = 0; 
  }
       
  }  
}


