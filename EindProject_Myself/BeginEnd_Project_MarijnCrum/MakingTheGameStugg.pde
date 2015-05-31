

// In this place here you can find all stuff like: 
// Difirent speed of walls. 
// Difirent breedte walls.  
// Difirent hoogte walls.


void MakingTheGameAwesomeStuff() 
{
       for (int p = 0; p < HowMuch_Objects; p++)
       {
          if (Objects[p].xmuur >= width - 2)
          {
              // For the high of the walls 
              Objects[p].ymuur = random (310,500);
          }
         
         
            // Speed Walls function
           if (MainPlayer.SpeedSpeed >= 3 && MainPlayer.SpeedSpeed < 5)
           {
                Objects[p].SXMuren = 4;  // Speed wals more !!!!
                
           } else if (MainPlayer.SpeedSpeed >= 5 && MainPlayer.SpeedSpeed < 6){    
                Objects[p].SXMuren = 6;  // Speed wals more !!!!
                   
           } else if (MainPlayer.SpeedSpeed >= 6 && MainPlayer.SpeedSpeed < 8){
                Objects[p].breedte = 60; 
                
           } else if (MainPlayer.SpeedSpeed >= 8 && MainPlayer.SpeedSpeed < 11){
                Objects[p].SXMuren = 8; 
                Objects[p].breedte = random(80,90); 
           } else if (MainPlayer.SpeedSpeed >= 11 && MainPlayer.SpeedSpeed < 13) {
                Objects[p].breedte = 100; 
                Objects[p].SXMuren = 10;
           } else if (MainPlayer.SpeedSpeed >= 13 && MainPlayer.SpeedSpeed < 17){
                Objects[p].SXMuren = 5;
                Objects[p].breedte = 40; 
                Objects[p].ymuur = random (300,500);
           } else if (MainPlayer.SpeedSpeed >= 17 && MainPlayer.SpeedSpeed < 20){
                Objects[p].SXMuren = 12;
                Objects[p].breedte = 80;
           } else if (MainPlayer.SpeedSpeed >= 20 && MainPlayer.SpeedSpeed < 23) {
                Objects[p].breedte = 100; 
                Objects[p].SXMuren = random (6,13);
           } else if (MainPlayer.SpeedSpeed >= 23 && MainPlayer.SpeedSpeed < 25){
                Objects[p].SXMuren = 10; 
                Objects[p].breedte = 100;
           } else if (MainPlayer.SpeedSpeed >= 25 && MainPlayer.SpeedSpeed < 35){
                Objects[p].breedte = random(30,90);
                Objects[p].hoogte = random(200,500);
                Objects[p].SXMuren = random(5,20);
           }else  { 
                Objects[p].SXMuren = 3; // Speed walls reset !!!!
                Objects[p].breedte = 90; 
           }
           
       }
         
  
  
}
