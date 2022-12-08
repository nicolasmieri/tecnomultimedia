hud2 hud2;
nivel3 nivel3;

class nivel2{

  color c;
  float posX;
  float posY;


  nivel2(color tempC, float tempX, float tempY){
    
    c = tempC;
    posX = tempX;
    posY = tempY;
   
   auto[2] = new auto(color (0,0,0), width+random(200, 250), random(150, 300), 35);
   auto[3] = new auto(color (0,0,0), width+ random(250,300), random(250, 420), 35);
   auto[4] = new auto(color (0,0,0), width+ random(100,300), random(150, 250), 28);
   auto[5] = new auto(color (0,0,0), width+ random(150,250), random(270, 380), 28);
   
   nivel3 = new nivel3(color(0,0,0), 300, 300);
   
   hud2 = new hud2(0,0);
   
   
}
  
  void display(){
  
  fill(0,200,0);

    frameRate= 120;
    PImage calle;
    calle = loadImage("callenivel2.png");
    background(calle);    


   PImage mapaLaLoma;
    mapaLaLoma = loadImage("mapalaloma.png");
    image(mapaLaLoma, 10, 450, 140, 140); 
    
  
  auto[2].displayMotoPoli();
  auto[2].manejoIzq();
  auto[3].displayMotoPoli();
  auto[3].manejoIzq();
  moto.displayMoto();
  moto.keyPressed();
  moto.manejoDer();
  
  hud2.display();
    
  
   if(auto[3].posX <= -100){
    
     auto[4].displayAuto();
     auto[4].manejoIzq();
     auto[5].displayAuto();
     auto[5].manejoIzq();}
      
      
     
  
     
   }
   
  }
  
