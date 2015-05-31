 #include <Servo.h> 
 
  Servo myservo;  
  int pos = 0;   
  int red = 13; 
  int green = 12;
  
  void setup() 
  { 
      myservo.attach(9); 
      pinMode (red,OUTPUT);  
      pinMode (green,OUTPUT);  
      Serial.begin(9600);
  } 
 
 
  void loop() 
  { 
    
        for(pos = 0; pos <= 180; pos += 1) 
        {                                 
            myservo.write(pos);              
            delay(15);   
          
            if (pos == 180)
            {
                digitalWrite (red,HIGH); 
                digitalWrite (green,LOW); 
            }   
         } // end forloop 
   
      
      
 
        for(pos = 180; pos>=0; pos-=1)     
        {                                
            myservo.write(pos);             
            delay(15);  
            
            if (pos == 0)
            {
                  digitalWrite (red,LOW); 
                  digitalWrite (green,HIGH); 
            }          
        } // end forloop
  } // end loop
