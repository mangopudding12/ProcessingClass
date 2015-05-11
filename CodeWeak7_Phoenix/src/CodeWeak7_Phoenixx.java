

// serial liberia 
// processing liberia 
// jssc.jar do you need to for 

// control y of i 
// native library __ zorg dat je de locations van je liberia aan geeft aan je computer. 





import processing.core.*; 

public class CodeWeak7_Phoenixx extends PApplet{
	
	// character zijn single letters 
	
	// Nu stuur je dus een int naar de string zodat je hem kan uitprinten op het scherm. 
	// Integer.toString(5);
	
	// Op deze manier kan je dus een character naar je string verzenden. Characters zijn letters... 
	// Character.toString(hello); 
	
	int xpos; 
	int ypos; 
	float speedx;
	float speedy; 
	
	PFont f; 
	PFont createdFont; 
	
	public void setup() 
	{
		size (800,800);
		
		xpos = 400;
		ypos = 400; 
//		
		
		
		
		
//		// Char = zijn letters
//		char [] hello = {'h','e','l','l','o'};
//		
//		// String kan je woorden mee schrijven. 
//		String helloString = "world";
//		
//		//println(Character.toString(hello[0]) + helloString.length());
//		
//		
//		// helloString.length() = zodat het niet out of bounce gaat. Dus dat het maar 5 letters heeft... 
//		for (int e = 0; e < helloString.length(); e++)
//		{
//			 // charAt = zodat die letter kan uitprinten. 
//			 println(helloString.charAt(e));
//		}
//	////////////////////////////////////////////////////////////////////////////////////////////////////
//		String n = "blub";
//		String n2 = "hoi";
//
//		// Als twee string zijn gelijk dan kan je dus equals gebruiken. 
//		if (n.equals(n2)) 
//		{}
		
		
    String [] words = { "hello","kip","hello","poes"};
    
    // length(); = Als je een speciafiek woord wilt. 

    	for (int i = 0; i < words.length; i++){
    	    println (words[i]);
    	}
 
		
    	// On this way you load a font. 
    	// Your font must stand in the bin file. 
    	// You can get a 
		f = loadFont ("ACaslonPro-Semibold-48.vlw"); 
		textFont(f,48);
		

		
		
		
	}
	
	public void draw() 
	{
		//text ("hoi julian",width/2,height/2); 
		
		String words = "words here asfsd";
		text (words ,xpos, ypos); 
		
		xpos += speedx; 
		ypos += speedy;
		
		
		if (xpos > (800) || xpos < 0)
		{
			speedx = speedx * -1; 
		} else {
			speedx = random(100);
			speedy = random(200);
		}
		
		if (ypos > 800 || ypos < 0)
		{
			speedy = speedy * -1; 
		}
		
			
	}

}
