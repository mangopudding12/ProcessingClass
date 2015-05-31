int ledPin = 4; // ledlight 
int inputPin = 7; // PIR sensor 
int MotionSensor = LOW; // We start, no motion detection. 
int val = 0; 

String hoi; 

void setup () 
{
   pinMode (ledPin,OUTPUT); 
   pinMode (inputPin,INPUT); 
  
   Serial.begin(9600); 
}

void loop () 
{
       digitalWrite(ledPin,HIGH); // Turn led on 
       
       if (MotionSensor == LOW)
       {
           //Serial.println("Motion Detection");
           hoi = String("S"); 
           Serial.println(hoi); 
           MotionSensor = HIGH; 
       }
    } else { 
        digitalWrite (ledPin,LOW);  
        if (MotionSensor == HIGH)
        {
           // Serial.println ("Motion end");
            hoi = String("D"); 
            Serial.println(hoi);
            MotionSensor = LOW; 
        }
    }
}


