hud3 hud3;

ganaste ganaste;


class nivel3{
  
  color c;
  float posX;
  float posY;
  
    nivel3(color tempC, float tempX, float tempY){
      
      c = tempC;
      posX = tempX;
      posY = tempY;
  
  
    auto[6] = new auto(color (0,0,0), width+(random(150,200)), random(140, 250), 25);
    auto[7] = new auto(color (0,0,0), width+(random(220,250)), random(300, 420), 20);
    auto[8]= new auto(color (0,0,0), width+(random(300, 350)), random(140, 420), 20);
    hud3 = new hud3 (0, 0);
    ganaste = new ganaste(0, 0);
    
    
    }
    
    void display(){
     
    clicked = false; 
    PImage calle;
    calle = loadImage("callenivel3.png");
    background(calle);  
      
    hud3.display();
    auto[6].displayCamioneta();
    auto[7].displayAuto();
    auto[6].manejoIzq();
    auto[7].manejoIzq();
    auto[8].displayCamioneta();
    auto[8].manejoIzq();
    
     PImage mapaRocha;
    mapaRocha = loadImage("maparocha.png");
    image(mapaRocha, 10, 450, 140, 140);
    
    moto.displayMoto();
    moto.keyPressed();
    moto.manejoDer();
   
   
}
}
