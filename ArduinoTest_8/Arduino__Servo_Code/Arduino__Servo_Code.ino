#include <Servo.h> 

// Servo aanmaken
Servo lolly; 

// Led lichtjes  
int red = 13;
int green = 12; 
int blauw = 2; 
int geel = 11;
int cblauw = 10; 
int cgeel = 8;  

// data sending 
String graden0; 
String graden180; 

// Stoppen en positie
int STOP = 1;
int pos = 90;


void setup () 
{
     // Servo zit aan pin 9 
     lolly.attach(9); 
     Serial.begin (9600); 
     
     // Led lichtjes 
     pinMode (red,OUTPUT); 
     pinMode (green,OUTPUT); 
     pinMode (blauw,OUTPUT);
     pinMode (geel,OUTPUT);
     pinMode (cblauw,OUTPUT); 
     pinMode (cgeel,OUTPUT); 
     
     delay (1000);
}


void loop () 
{
  
// ------------------------ STOP == 1 ----------------------------  
  if (STOP == 1 || STOP == '1')
  {
    // Data sending     
    Serial.write ("STOP = 0"); 
    
    // Led lichtjes 
    digitalWrite (red, LOW);
    digitalWrite (blauw,LOW);
    digitalWrite (geel,LOW); 
    digitalWrite (cblauw,LOW);
    digitalWrite (cgeel,LOW);
    
    // Beweging 
    for(pos = 90; pos>=0; pos-=1)     
    {   
       lolly.write(pos);             
       delay(15);
       
      // Wanneer servo 180 is ga naar stop 2 (stil zetten). 
      if (pos == 0)
      {
          digitalWrite (green,HIGH);
          delay (1000);
          STOP = 3; 
      }
    }  
  } // end stop == 1
  
  
// ------------------------ STOP == 2 -----------------------   
  if (STOP == 2 || STOP == '2')
  {
      // Data sending 
      Serial.write ("STOP = 2"); 
      
      // Led lichtjes 
      digitalWrite (green,LOW);
      digitalWrite (blauw,LOW);
      digitalWrite (geel,LOW);
      digitalWrite (red,HIGH);
      digitalWrite (cblauw,LOW);
      digitalWrite (cgeel,LOW);
      
      // Beweging 
      for (pos = 0; pos <= 90; pos++)
      {  
            lolly.write (pos);
            delay (15); 
            
            // Wanneer servo 180 is ga naar stop 2 (stil zetten). 
            if (pos == 90)
            {
                  digitalWrite (red,HIGH);
                  delay (1000);
                  STOP = 4; 
            }
      }
    } // end stop == 2 
    
    
// ------------------------ STOP == 3 -------------------     
  if (STOP == 3)
  {
      // Sending Data
      Serial.write ("STOP = 3"); 
      
      // Led lichtjes
      digitalWrite (blauw,HIGH);
      digitalWrite (red, LOW);
      digitalWrite (green, LOW);
      digitalWrite (geel,LOW);
      digitalWrite (cgeel,LOW);
      
      // Reading processing Serial Data. 
      if (Serial.available())
      {
          STOP = Serial.read();
      }  else {
          
          // Als er geen data is dan 
          digitalWrite (cblauw,HIGH);
      }
  }  
  
// ----------------- STOP == 4 ---------------------------   
  if (STOP == 4)
  {
      // Sending Data 
      Serial.write ("STOP = 4"); 
    
      // Led lichtjes
      digitalWrite (geel,HIGH);
      digitalWrite (blauw,LOW);
      digitalWrite (red, LOW);
      digitalWrite (green, LOW);
      digitalWrite (cblauw,LOW);
      
      // Reading processing Serial Data. 
      if (Serial.available()) 
      { 
           STOP = Serial.read(); // read it and store it in val 
      } else {
        
         // Als er geen data is dan 
         digitalWrite (cgeel,HIGH);
      }
  }
  
// --------------------------------------------------------------
  
}
