jugador moto;
hud arma;
nivel2 nivel2;



class nivel1{

color c;
float posX;
float posY;

 
  nivel1(color tempC, float tempX, float tempY){
    
    c = tempC;
    posX = tempX;
    posY = tempY;
        
  moto = new jugador(-160, height/2, 12, 10);
  auto[0] = new auto(color(0,0,200), width+(100), random(110, 270), 15);
  auto[1] = new auto(color(#16A4D6), width+random(150,220), random(300, 460), 15);
  nivel2 = new nivel2(color(0,200,0), 300, 300); 
  arma = new hud(0,0);
  
 }
  
void display(){

  
   
    println("posX auto3:" + auto[1].posX);
    PImage calle;
    calle = loadImage("callenivel1.png");
    background(calle);
    
      Player.play();
      
     
  
  moto.displayMoto();
  moto.keyPressed();
  moto.manejoDer();
  
  auto[0].displayAuto();
  auto[0].manejoIzq();
  auto[1].displayAuto();
  auto[1].manejoIzq();
  arma.display1();

  
  
  }
}
