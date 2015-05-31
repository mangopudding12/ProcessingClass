
// Getting the data from the serial port
void serialEvent(Serial  whalefish) 
{
  SerialStream =  whalefish.readString();
}
