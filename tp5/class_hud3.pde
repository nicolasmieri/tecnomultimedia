class hud3{
  
float posX;
float posY;

  hud3(float tempX, float tempY){
  
  tempX = posX;
  tempY = posY;
  
  }
  
  void display(){
  
  PImage estrellas6;
  
  estrellas6 = loadImage("6estrellas.png");
  image(estrellas6, 390, 10, 170, 160);
  
  
  }
}
