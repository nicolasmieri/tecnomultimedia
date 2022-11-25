class jugador{
  
  
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
}
