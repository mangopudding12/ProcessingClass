
class Muren  
{ 
    public float xmuur;
    public float ymuur;
    public float hoogte; 
    public float breedte; 
    
    float kleur1; 
    float kleur2;
    float kleur3;
    float SXMuren;  
           
  
    // Contructor 
    Muren(float xmuur_,float ymuur_,float breedte_,float hoogte_) 
    {  
         xmuur = xmuur_;
         ymuur = ymuur_;
         hoogte = hoogte_;
         breedte = breedte_;
         SXMuren = 3; 
    }
  
  
    void display(float kleur1_,float kleur2_,float kleur3_) 
    {
       kleur1 = kleur1_; 
       kleur2 = kleur2_;
       kleur3 = kleur3_; 
       
       fill (kleur1,kleur2,kleur3);
       rect (xmuur,ymuur,breedte,hoogte);
    }
   
   void move () 
   {
      xmuur -= SXMuren;  
   }
  
   // When wall is out of screen set it to the width 1200 again. 
   void outScreen() 
   {  
           if (xmuur < 0 - breedte)
           {
               xmuur = width;
           }
   } 
}
