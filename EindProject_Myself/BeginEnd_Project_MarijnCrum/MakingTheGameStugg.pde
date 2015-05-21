

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
           if (MainPlayer.SpeedSpeed > 6)
           {
                Objects[p].SXMuren = 10;  // Speed wals more !!!!
           } else if (MainPlayer.SpeedSpeed ==5){
             
                   Objects[p].breedte =180;  // Het is mogelijk de muren dikker te maken. 
           }else  { 
                Objects[p].SXMuren = 3; // Speed walls reset !!!!
                Objects[p].breedte = 90; 
           }
           
       }
         
  
  
}
