hud3 hud3;
wasted wasted;
ganaste ganaste;


class nivel3{
  
  color c;
  float posX;
  float posY;
  
    nivel3(color tempC, float tempX, float tempY){
      
      c = tempC;
      posX = tempX;
      posY = tempY;
  
  
    auto8 = new auto(color (0,0,0), random(width+150,200), random(140, 420), 30);
    auto9 = new auto(color (0,0,0), random(width+220,250), random(300, 420), 30);
    auto10= new auto(color (0,0,0), random(width+100, 120), random(250, 350), 30);
    hud3 = new hud3 (0, 0);
    wasted = new wasted(0, 0);
    ganaste = new ganaste(0, 0);
    
    
    }
    
    void display3(){
    
      
    hud3.display();
    auto8.displayCamioneta();
    auto9.displayAuto();
    auto8.manejoIzq();
    auto9.manejoIzq();
    auto10.displayCamioneta();
    auto10.manejoIzq();
    
     PImage mapaRocha;
    mapaRocha = loadImage("maparocha.png");
    image(mapaRocha, 10, 450, 140, 140);
    
    moto.displayMoto();
    moto.keyPressed();
    moto.manejoDer();
    
    if(auto10.posX <= -10){
      
      ganaste.displayGanar();
     
    
    }
    
}
}
