//https://youtu.be/HoK681Q0goU

PImage [] dinos = new PImage [2];
PImage [] dinosIzq = new PImage [2];
String [] instrucciones = {"Bienvenidos a mi trabajo práctico 3. Las reglas son muy sencillas:", "En este minijuego somos un sniper encargado de matar a un dinosaurio", "Para eso solo hay que hacerle click encima, pero tenemos un solo disparo!", "De errarlo vamos a perder \n Buena suerte!"};
PImage instrucciones1;
PImage instrucciones2;
PImage mira;
PImage vidrio;
PImage ganar;
int dinosCant = 0;
PImage fondo;
PImage perder;
int numeros = 0;
int u=0;


boolean juego = false;
boolean instruccion1 = false;
boolean instruccion2= false;
boolean ganaste= false;
boolean R = false;
boolean creditos = false;
boolean perdiste= false;

void setup(){  
  
instrucciones1 = loadImage("instrucciones1.png");
instrucciones2 = loadImage("instrucciones2.png"); 
ganar = loadImage("fondoganaste.png");
perder = loadImage("fondoperdiste.png");
 size(601,600); 
 
 
  imageMode(CENTER);
  frameRate(17);
  fondo = loadImage("fondo 1.png");
  mira = loadImage("mira.png");
  vidrio = loadImage("vidrio.png");
  
  
  for(int i = 0; i<dinos.length; i++){
    dinos[i] = loadImage("dino" + i + ".png");}
      
  for(int i2 = 0; i2<dinosIzq.length; i2++){
    dinosIzq[i2] = loadImage("dinoizq" + i2 + ".png");}
 
} 

void draw(){
    

 
  println(mouseX,mouseY);
  textSize(12.5);
  fill(0);  
  background(instrucciones1);
    
  if(instruccion2 == true){
    instruccion1 = false;
  background(instrucciones2);}  
  
  if(juego == true){ 
    instruccion1 = false; 
    instruccion2 = false;       
  background(fondo); animaciones(); movimientoDinos();  }

  if(ganaste == true){
  background(ganar);}
  
    if(R == true){
     background(fondo);
     posX = -50;
     posY = 380;}
     
     if(creditos == true){
     creditos();
     }
     
     if(perdiste == true){
     background(perder);
      
     
       
     }
  
  image(mira, mouseX, mouseY, 60, 60);
  
}

void keyPressed(){
    if( key=='1'){instruccion1 = true;
    
 juego = false;
instruccion2= false;
 ganaste= false;
 R = false;
 creditos = false;
  
  
}
     if(key=='2'){instruccion2 = true;
    juego = false;
    instruccion1 = false;
    ganaste= false;
    R = false;
    creditos = false;
 }
     if(key=='3'){juego = true;
  
  instruccion1 = false;
  instruccion2= false;
   ganaste= false;
   R = false;
   creditos = false;  
   perdiste = false;
 }
     if(key=='r'){R = true;
 
    juego = false;
    instruccion1 = false;
    instruccion2= false;
     ganaste= false;
     creditos = false;
     perdiste = false;
 
 }
     if(key=='c'){creditos = true;
  juego = false;
instruccion1 = false;
instruccion2= false;
 ganaste= false;
 R = false;
 perdiste = false;
 
 }
}

void mousePressed(){
 float d1 = dist(mouseX, mouseY, posX, posY);
 int aim = 60;
 if( d1<aim) {ganaste = true;} else if(d1>aim) {perdiste = true;}
  
}
