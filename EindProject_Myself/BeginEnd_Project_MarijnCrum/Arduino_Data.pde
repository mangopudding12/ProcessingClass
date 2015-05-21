

// Getting the data from the serial port
void serialEvent(Serial  myWhale) {
  portStream =  myWhale.readString();
}
