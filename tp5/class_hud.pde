

class hud{


  float posX;
  float posY;
  
  
  
  hud(float tempX, float tempY){
  
    posX = tempX;
    posY = tempY;
  
  }
  
  void display1(){
  
  PImage arma;
  PImage mapa;
  arma = loadImage("2estrellas.png");
  mapa = loadImage("mapadiago.png");
  image(arma, 390, 10, 170, 160);
  image(mapa, 10, 450, 140, 140);
  }
  
}
