nivel1 nivel1;


class pantalla{
  
 float posX;
 float posY;
 boolean jugar;

 
  pantalla(float tempX, float tempY){
  
    posX = tempX;
    posY = tempY;
    
    nivel1= new nivel1(color(#AA9B9B), 300, 300);
  
  }
  
void display(){
    

    PImage fondo;
    fondo = loadImage("laplatacity.png");
    background(fondo);
    
     
  }
  

 void transicion() { 
 
 if(clicked){
   nivel1.display();
   
 } }
      
  


}
