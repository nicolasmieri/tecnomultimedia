

class hud2{
  
float posX;
float posY;

  hud2(float tempX, float tempY){
  
  tempX = posX;
  tempY = posY;
  
  }
  
  void display(){
  
  PImage estrellas;
  
  estrellas = loadImage("4estrellas.png");
  image(estrellas, 390, 10, 170, 160);
  
  
  }
}
