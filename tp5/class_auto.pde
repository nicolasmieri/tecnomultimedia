auto[] auto = new auto[9];


class auto{
  color c;
  float posX;
  float posY;
  float velocidadX;  

  

  
  auto(color tempC, float tempX, float tempY, float tempVelX){
    
    c = tempC;
    posX = tempX;
    posY = tempY;
    velocidadX = tempVelX;   
}

void displayAuto(){
  
  
 
 
  rectMode(CENTER);
  
  
    PImage patrulla;
    patrulla = loadImage("patrulla.png");
    image(patrulla, posX, posY, 100,60);

}

void displayMotoPoli(){

  PImage motoPoli;
  motoPoli = loadImage("motoPoli.png");
  image(motoPoli, posX, posY, 70, 40);
  
}

void displayCamioneta(){
  PImage camioneta;
  camioneta = loadImage("camioneta.png");
  image(camioneta, posX, posY, 150, 100);

}




  void manejoIzq(){
  
 
    posX -= velocidadX;

     
  }     
     
  }
  
