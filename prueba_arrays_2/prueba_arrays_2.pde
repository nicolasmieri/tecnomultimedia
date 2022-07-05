PImage [] dinos = new PImage [2];
PImage [] dinosIzq = new PImage [2];
String [] instrucciones = {"Bienvenidos a mi trabajo práctico 3. \n    Las reglas son muy sencillas:", "En este minijuego somos un dios que, \n por un despiste desafortunado engendró un dinosaurio en el año 2022", "Puesto a que este animal no pertenece a nuestra época, hay que hacerlo desaparecer para así evitar un desastre. Para eso solo tenemos que hacer click encima suyo", "De no hacerlo, se va a ver alterada la línea de tiempo y por ende vamos a perder! Buena suerte"};
PImage mira;
PImage vidrio;
int dinosCant = 0;
float posY = 380;
int posX = -50;
float movimiento = random(10,15);
float movimiento2= 5;
PImage fondo;
int numeros = 0;
int u=0;
void setup(){


 size(601,600);
  imageMode(CENTER);
  frameRate(20);
  fondo = loadImage("fondo 1.png");
  mira = loadImage("mira.png");
  vidrio = loadImage("vidrio.png");

  
  for(int i = 0; i<dinos.length; i++){
    dinos[i] = loadImage("dino" + i + ".png");}
      
  for(int i2 = 0; i2<dinosIzq.length; i2++){
    dinosIzq[i2] = loadImage("dinoizq" + i2 + ".png");}
 
} 

void draw(){
  
  background(fondo);
  println(mouseX,mouseY);
  image(mira, mouseX, mouseY, 60, 60);
  textSize(12.5);
  fill(0);
 

 animaciones();  
 movimientoDinos();
  
}


    
  

  
