nivel1 nivel1;


class pantalla{

 boolean reiniciar;
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
     moto.colision();
     
  }
  

 void transicion() { 
 {
   {
 if(clicked){
   nivel1.display();}

 if(auto[1].posX <= -170){

    
    nivel2.display(); }
    
 if(auto[5].posX <= -100){
     
     
      auto[1].posX = 800;  
      nivel3.display();     }
            
 if(auto[8].posX <= -50){
      
      ganaste.displayGanar();
      auto[8].posX = -300;
    }
    
 

}     
}    
}

 void reiniciar(){

if(key == 'r'){
  reiniciar = true;
  


 if(reiniciar = true){pantalla1.display();
  auto[0].posX = 800;
  auto[1].posX = 800;  
  auto[2].posX = 800;
  auto[3].posX = 800;
  auto[4].posX = 800;
  auto[5].posX = 800;
  auto[6].posX = 800;
  auto[7].posX = 800;
  auto[8].posX = 800;
  moto.posX = -160;
  clicked = false;
 }
 
 

}


}


}
      
