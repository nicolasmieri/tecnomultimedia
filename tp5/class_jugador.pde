class jugador{
  
  boolean reiniciar;
  boolean arriba, abajo;
  float posX;
  float posY;
  float velocidadX, velocidadY;
  
  jugador(float tempX, float tempY, float tempVelX, float tempVelY){
    
    posX = tempX;
    posY = tempY;
    velocidadX = tempVelX;
    velocidadY = tempVelY;
 }  
 
   void displayMoto(){
  
    PImage moto;
    moto = loadImage("moto.png");
    image(moto, posX, posY, 80, 70);
    
  
  }
  
  
  void keyPressed(){
      
    println("arriba:" + arriba);
    println("abajo:" + abajo);
    
    if(key == 'w'){
        arriba = true;
    }else{arriba = false;}

    
    if(key == 's'){      
      abajo = true;
    }else{abajo = false;}
    
    if(arriba == true){
      posY -= velocidadY;} 
    
    if(arriba == false){
      posY -= 0;}
      
    if(abajo == true){
      posY += velocidadY;}
    
    if(abajo == false){
      posY += 0;}
   
    
     }
     
  void manejoDer(){
   
    posX += velocidadX;
     if(posX >= width){
       posX = -120;        
   
 }  
     }
     
  void colision(){
  
     if(dist(auto[0].posX, auto[0].posY, moto.posX, moto.posY)<=30)
     {
     auto[0].posX = 800;
     wasted.displayWasted();
     
     }  
     
      if(dist(auto[1].posX, auto[1].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[0].posX = 800;
     }  
     
      if(dist(auto[2].posX, auto[2].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[1].posX = 800;
     }  
     
      if(dist(auto[3].posX, auto[3].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[1].posX = 800;
     }  
     
     if(dist(auto[4].posX, auto[4].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[1].posX = 800;
     }  
     
      if(dist(auto[5].posX, auto[5].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[1].posX = 800;
     }  
     
      if(dist(auto[6].posX, auto[6].posY, moto.posX, moto.posY)<=40)
     {
     wasted.displayWasted();
     auto[5].posX = 800;
     }  
     
  
      if(dist(auto[7].posX, auto[7].posY, moto.posX, moto.posY)<=30)
     {
     wasted.displayWasted();
     auto[5].posX = 800;
     }  
     
      if(dist(auto[8].posX, auto[8].posY, moto.posX, moto.posY)<=40)
     {
     wasted.displayWasted();
     auto[5].posX = 800;
     }  
     
     
     
  }     
}
