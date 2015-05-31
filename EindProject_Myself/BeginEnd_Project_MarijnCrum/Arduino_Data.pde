




// Getting the data from the serial port
void serialEvent(Serial  myWhale) {
  portStream =  myWhale.readString();
}

void ardruino () 
{
   if(portStream.charAt(0) == 'S' ) // When getting S you are posible to jump
                {
                     if (onetimee == 0)
                     {
                          TTimer.reachedTime = false; 
                          actiefjump = true;
                          
                          // Servo gaat dicht
                          if (tellen == 1)
                          { 
                              myWhale.write ('1');
                              tellen = 0;
                          } 
                          
                          onetimee = 1; 
                     } 
                } else {     
                     if (onetimee == 1)
                     {
                          onetimee = 0; 
                          println("Reset Timer");
                          TTimer.tijdStart(); // reset Timer 
                     }
                     
                          println("Tikking Timer");
                          TTimer.Tikking();
                          
                          if (TTimer.PassedTime > 600 )
                            
                            // Servo goes open 
                            if (tellen == 0)
                            {
                                myWhale.write ('2');
                                tellen = 1; 
                            }
                          
                          
                          if (TTimer.reachedTime == true)
                          {
                            textFont(Tfont, 32);
                            fill(0);
                            text("You can jump", 10, 50);
                          }
                }  
}
