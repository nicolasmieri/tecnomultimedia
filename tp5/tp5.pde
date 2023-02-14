//Para el HUD hice un arreglo tanto para el mapa como para las estrellas
//para englobar todas las clases use una variable global que es Estado
//le agregue un reinicio a la musica en el reinicio


pantalla pantalla1;
boolean clicked = false;




import ddf.minim.*;
Minim minim;
AudioPlayer Player;




void setup(){
  
  
  size(600,600);
  frameRate(180);
    minim = new Minim(this);
    Player = minim.loadFile("GTALP.wav");     
    pantalla1 = new pantalla(color(#AA9B9B),300, 300);
   
  
}
  
void draw(){

  println("clicked=" + clicked);
  
  pantalla1.Estado();

  pantalla1.transicion();
    
   moto.colision();
   

}

void mouseClicked(){
  
  clicked = true;

}

void keyPressed(){
  
pantalla1.reiniciar();
  
}
