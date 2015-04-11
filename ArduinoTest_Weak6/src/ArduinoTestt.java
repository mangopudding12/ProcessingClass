

// This is the liberia from processing self
import processing.core.*; 

//// This is the serialport liberia for the arduino
import processing.serial.*;

public class ArduinoTestt extends PApplet {
	
	// Create object from Serial Class
	Serial myPort;
	String portName; 
	
	
	public void setup ()
	{
		size (600,600); // canvas pixels big 
		
		// Connexting with the right serial port of your pc.
		// There is something going wrong here but what ?????? 
		// It is seriues so weird it don't work 
		portName = Serial.list()[0]; 
		
		println(portName);
		//myPort = new Serial (this,portName,9600);	
	}
	
	
	public void draw() 
	{		
//		if (mousePressed == true)
//		{
//			
//			myPort.write('3');
//			println("3");
//		} else 
//		{
//			myPort.write('0');
//			println("0");
//		}
	}
}



