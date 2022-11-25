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
   
   auto4 = new auto(color (0,0,0), width+random(200, 250), random(150, 300), 40);
   auto5 = new auto(color (0,0,0), width+ random(250,300), random(250, 420), 40);
   auto6 = new auto(color (0,0,0), width+ random(100,300), random(150, 250), 30);
   auto7 = new auto(color (0,0,0), width+ random(150,250), random(270, 380), 30);
   
   nivel3 = new nivel3(color(0,0,0), 300, 300);
   
   hud2 = new hud2(0,0);
   
   
}
  
  void display(){
  
  fill(0,200,0);


    PImage calle;
    calle = loadImage("callenivel2.png");
    background(calle);    

    
    
     
 
    
  
  
  auto2.displayAuto();
  auto2.manejoIzq();
  auto4.displayMotoPoli();
  auto4.manejoIzq();
  auto5.displayMotoPoli();
  auto5.manejoIzq();
  moto.displayMoto();
  moto.keyPressed();
  moto.manejoDer();
  hud2.display();
  
  PImage mapaLaLoma;
    mapaLaLoma = loadImage("mapalaloma.png");
    image(mapaLaLoma, 10, 450, 140, 140);   
  
   if(auto5.posX <= -50){
    
     auto6.displayAuto();
     auto6.manejoIzq();
     auto7.displayAuto();
     auto7.manejoIzq();}
     
      if(auto7.posX <= -50){
       
      nivel3.display3();     }
      
      
     
  
     
   }
   
  }
  
