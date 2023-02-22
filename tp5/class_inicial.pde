
jugador moto;


//variable estado
int Estado=0;




class pantalla {

  //arreglo para el hud, tanto de las estrellas como el mapa
  int cantEstrellas = 3;
  PImage [] estrellas= new PImage [cantEstrellas];
  String [] name = {"2estrellas.png", "4estrellas.png", "6estrellas.png"};

  int cantMapa = 3;
  PImage [] mapa= new PImage [cantMapa];
  String [] mapas = {"mapadiago.png", "mapalaloma.png", "maparocha.png"};


//diversas variables 
  boolean reiniciar;
  float posX;
  float posY;
  boolean jugar;
  color c;
  float posX1;
  float posY1;



  pantalla(color tempC, float tempX, float tempY) {

    c=tempC;
    posX = tempX;
    posY = tempY;

    moto = new jugador(-160, height/2, 12, 10);
    
    auto[0] = new auto(color(0, 0, 200), width+random(200,170), random(110, 270), 15);
    auto[1] = new auto(color(#16A4D6), width+random(150, 220), random(300, 460), 15);


    auto[2] = new auto(color (0, 0, 0), width+random(200, 250), random(150, 300), 35);
    auto[3] = new auto(color (0, 0, 0), width+ random(250, 300), random(250, 420), 35);
    auto[4] = new auto(color (0, 0, 0), width+ random(100, 300), random(150, 250), 28);
    auto[5] = new auto(color (0, 0, 0), width+ random(150, 250), random(270, 380), 28);
    auto[6] = new auto(color (0, 0, 0), width+(random(150, 200)), random(140, 250), 25);
    auto[7] = new auto(color (0, 0, 0), width+(random(220, 250)), random(300, 420), 20);
    auto[8]= new auto(color (0, 0, 0), width+(random(300, 350)), random(140, 420), 20);




  //ciclo for para mis arreglos(subir)
    for (int n=0; n<name.length; n++) {
      estrellas [n] = loadImage (name[n]);
    }

    for (int a=0; a<mapas.length; a++) {
      mapa [a] = loadImage (mapas[a]);
    }
  }
  
  //estados
  void Estado(){

if (Estado==0) {
    inicio();
    Player.play();
  } else if (Estado==1) {

   Estado1();

    
  } else if (Estado==3) {
    Estado3();
  } else if (Estado==2) {
    Estado2();
  } else if (Estado==4) {
    Estado4();
  
  } else if (Estado==5) {
    Estado5();
}
}
   
   
//inicio
  void inicio() {


    PImage fondo;
    fondo = loadImage("laplatacity.png");
    background(fondo);
    
  }

//nivel 1
  void Estado1() {



    println("posX auto3:" + auto[1].posX);
    PImage calle;
    calle = loadImage("callenivel1.png");
    background(calle);

    
    
    



    moto.displayMoto();
    moto.keyPressed();
    moto.manejoDer();
    
    moto.colision();

    auto[0].displayAuto();
    auto[0].manejoIzq();
    auto[1].displayAuto();
    auto[1].manejoIzq();
    

    image (estrellas[0], 400, 10, 200, 210);

     image(mapa[0], 10, 450, 150, 150);
  }
  
  //nivel 2
  void Estado2() {

   

    fill(0, 200, 0);

    frameRate= 120;
    PImage calle;
    calle = loadImage("callenivel2.png");
    background(calle); 
    


     moto.displayMoto();
    moto.keyPressed();
    moto.manejoDer();
    
    moto.colision();
    
    auto[2].displayMotoPoli();
    auto[2].manejoIzq();
    auto[3].displayMotoPoli();
    auto[3].manejoIzq();
  
    

    image (estrellas[1], 400, 10, 200, 210);
     image(mapa[1], 10, 450, 150, 150);



    if (auto[3].posX <= -100) {

      auto[4].displayAuto();
      auto[4].manejoIzq();
      auto[5].displayAuto();
      auto[5].manejoIzq();
    }
     
  }

//nivel 3
  void Estado3() {


  
  
    clicked = false; 
    PImage calle;
    calle = loadImage("callenivel3.png");
    background(calle);  


    auto[6].displayCamioneta();
    auto[7].displayAuto();
    auto[6].manejoIzq();
    auto[7].manejoIzq();
    auto[8].displayCamioneta();
    auto[8].manejoIzq();
    
    moto.colision();



    moto.displayMoto();
    moto.keyPressed();
    moto.manejoDer();
    
    image (estrellas[2], 400, 10, 200, 210);
     image(mapa[2], 10, 450, 150, 150);
       
  }
  //pantalla ganadora
  void Estado4(){
    


  PImage ganar;  
  ganar = loadImage("ganar.png");
  background(ganar);
    }
    //pantalla perdedora
    void Estado5(){
      
         PImage wasted;
         wasted = loadImage("wasted.png");
      
           clicked = false;

 
  background(wasted);
      
      
    }
//transicion
  void transicion() { 
    {
      {
        if (clicked) {
          Estado1();
        }

        if (auto[1].posX <= -170) {


          Estado2();
        }

        if (auto[5].posX <= -100) {


          auto[1].posX = 800;  
          Estado3();
        }

        if (auto[8].posX <= -50) {

          Estado4();
          auto[8].posX = -300;
        }
      }
    }
  }
//reinicio
  void reiniciar() {

    if (key == 'r') {
      reiniciar = true;



      if (reiniciar == true) {
        Player.rewind();
        Estado=0;
         
          for(int x=0;x<9;x+=1){
          auto[x].posX = 800;
        }       
         
        moto.posX = -160;
        clicked = false;
      }
    }
  }
}
