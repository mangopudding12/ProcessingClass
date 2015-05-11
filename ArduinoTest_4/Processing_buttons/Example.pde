
// what is string.charAt(n) mening ???????????????
// Access a particular character of the String.
// string: a variable of type String
// n: the character to access

// ...............................................................
// what is substring() ??????????????????
//string.substring(from)
//string.substring(from, to)
//string: a variable of type String
//from: the index to start the substring at
//to (optional): the index to end the substring before

// ** example **
// String str1 = "CCCP"; 
// String str2 = "Rabbit"; 
// String ss1 = str1.substring(2);     // Returns "CP"
// String ss2 = str2.substring(3);     // Returns "bit"
// String ss3 = str1.substring(0, 2);  // Returns "CC"
// println(ss1 + ":" + ss2 + ":" + ss3);  // Prints "CP:bit:CC"


// ................................................
// Serial.println
// Serial.println you can send strings to the data port of your computer 

//................................................................
// Serial.write()
// You can send byte or series of bytes
// You can send numbers 
// val: a value to send as a single byte
// str: a string to send as a series of bytes
// buf: an array to send as a series of bytes
// len: the length of the buffer


// .................................................
// what is bufferUntil();
// By calling this function we asking not to be interrupted 
// with data on the serial port until we receive a character of our choosing.

// ** Example **
// MySerialPort.bufferUntil ('\n');
// I want that I get data until you get to the end of the string you get from the serialport. 
// So until you get a new line, Than you clear with your work. 


// ..................................................

