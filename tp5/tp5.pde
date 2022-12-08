https://youtu.be/ORryit0uPSc

pantalla pantalla1;
boolean clicked = false;
wasted wasted;


import ddf.minim.*;
Minim minim;
  AudioPlayer Player;




void setup(){
  
  
  size(600,600);
  frameRate(180);
    minim = new Minim(this);
    Player = minim.loadFile("GTALP.wav");     
    pantalla1 = new pantalla(300, 300);
    wasted = new wasted(300, 300);
  
}
  
void draw(){

  println("clicked=" + clicked);
  
  pantalla1.display();
  
  pantalla1.transicion();
    
   moto.colision();
   

}

void mouseClicked(){
  
  clicked = true;

}

void keyPressed(){
  
pantalla1.reiniciar();
  
}
