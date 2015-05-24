
// Good to know and to remember 
// ABOUT THE HIGH OF THE WALLS. 
// The player can jump higher dan 310  



// Liberia for the arduino 
import processing.serial.*;

// Arduino 
Serial myWhale;     // give port a name 
String portStream;  // string form the port
boolean actiefjump = false; // Zorgt dat je kan springen
int onetimee; 

// The classes 
Player MainPlayer;
Player Enemy; 
Ground grond;
Muren[] Objects;  
reset STARTbutton;

// Variables 
int HowMuch_Objects; 
boolean GameOver; 
float RandomYmuur; 

// Timer 
Timer TTimer; 

// Font 
PFont Tfont;

