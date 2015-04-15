

import processing.core.*; 

public class CodeWeak7_Phoenixx extends PApplet{
	
	// character zijn single letters 
	
	// Nu stuur je dus een int naar de string zodat je hem kan uitprinten op het scherm. 
	// Integer.toString(5);
	
	// Op deze manier kan je dus een character naar je string verzenden. Characters zijn letters... 
	// Character.toString(hello); 
	
	public void setup() 
	{
		size (800,800);
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
 
		
		
		
	}
	
	public void draw() 
	{
		
	}

}
