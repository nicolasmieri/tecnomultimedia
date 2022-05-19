float posY = 620;
float posY2 = 1320;
float posY3 = 1420;
float posY4 = 1620;
float posY42 = 1640;
float posY5 = 1820;
float posY6 = 2020;
float posY7 = 2120;
float posY8 = 2720;
float posY9 = 2820;
float posY10 = 3020;
float posY11= 3120;
float posY12= 3220;
float posY13= 3820;
float posY14= 3920;
float posY15= 4000;
float posY16= 4120;
float posY17= 4320;
float posY18= 4420;
float posY19= 4520;
float posY20= 4620;
float posY21= 5220;
float posY22= 5420;

PImage tboiMouse;
PImage tboi;
PFont font;
PImage logo;
float tembleke;
float velocidad = 2;

void setup(){
  
  size (600,600);
  font = createFont("upheavtt.ttf", 32);
  textFont(font);

}

void draw(){
  
  
  logo = loadImage("Isaac logo.png");
  tembleke = random(98,100);
  tboi = loadImage("tboi.jpg");
  background(tboi);
  println(mouseX, mouseY);
 
 
 
 //textos textAlign CENTER
 
  textAlign(CENTER);
  
  image(logo, tembleke, posY);
  textSize(40);
  text("Director lider", width/2, posY2);
  textSize(32);
  text("Edmund McMillen", width/2, posY3);
  textSize(40);
  text("Diseño de\nenemigos y niveles", width /2, posY8);
  textSize(32);
  text("Nikola Rakonjac", width/2, posY9);
  textSize(40);
  text("Artistas", width/2, posY10);
  textSize(32);
  text("Wayne Kubiak", width/2, posY12);
  textSize(40); 
  text("Musica", width/2, posY13);
  textSize(32);
  text("Jon Evans", width/2, posY14);
  textSize(40);
  text("Editorial Director", width/2, posY19);
  textSize(32);
  text("Chris Bieniek", width/2, posY20);
  textSize(40);
  text("Pero por sobre todo...", width/2, posY21);
  textSize(32);
  text("Gracias a todos ustedes por\nhaber jugado nuestro juego,\npor el constante feedback\ny todo el amor que hemos recibido\na lo largo del desarrollo\nde este proyecto\n<3", width/2, posY22);
  
  
 
 //textos textAlign LEFT
 
 textAlign(LEFT);
 
  textSize(40);
  text("Programador, \ndiseñador \n& artista", 30, posY4);
  textSize(32);
  text("Tyrone \nRodriguez", 75, posY5);
  textSize(40);
  text("Director\ntecnico", 50, posY6);
  textSize(32);
  text("Roar\nFlolo", 75, posY7);
  text("Matt Kap", 75, posY11);
  textSize(40);
  text("Narrador", 50, posY15);
  textSize(32);
  text("Matthias\nBossi", 75, posY16);
  textSize(40);
  text("cutscenes", 50, posY17);
  textSize(32);
  text("Krystal\nFleming", 75, posY18);
  
 
 

 
 
 //textos textAlign RIGHT

 textAlign(RIGHT);
 
 textSize(40);
 text("Productor\nejecutivo", 570, posY42);
 textSize(32);
 text("Victor \nRodriguez", 525, posY5);
 textSize(40);
 text("Programador\nlider", 550, posY6);
 textSize(32);
 text("Jeremy\nStevens", 525, posY7);
 text("Snakeblock", 525, posY11);
 textSize(40);
 text("Diseñador\nde sonido", 550, posY15);
 textSize(32);
 text("Joey Kuras", 525, posY16);
 textSize(40);
 text("Trailers", 550, posY17);
 textSize(32);
 text("Alex Hicks", 525, posY18);
 


 
 
 
 //comandos
 posY -= velocidad;
 posY2 -= velocidad;
 posY3 -= velocidad;
 posY4 -= velocidad;
 posY42 -= velocidad;
 posY5 -= velocidad;
 posY6 -= velocidad;
 posY7 -= velocidad;
 posY8 -= velocidad;
 posY9 -= velocidad;
 posY10 -= velocidad;
 posY11 -= velocidad;
 posY12 -= velocidad;
 posY13 -= velocidad; 
 posY14 -= velocidad;
 posY15 -= velocidad;
 posY16 -= velocidad;
 posY17 -= velocidad;
 posY18 -= velocidad;
 posY19 -= velocidad;
 posY20 -= velocidad;
 posY21 -= velocidad;
 posY22 -= velocidad;
 }
