pantalla pantalla1;
boolean clicked = false;
boolean clicked2 = false;


import ddf.minim.*;
Minim minim;
  AudioPlayer Player;




void setup(){
  
  
  size(600,600);
  frameRate(60);
    minim = new Minim(this);
    Player = minim.loadFile("GTALP.wav");     
    pantalla1 = new pantalla(300, 300);
    
}
  
void draw(){

  pantalla1.display();
  pantalla1.transicion();
  

}

void mouseClicked(){
  
  clicked = true;

}
