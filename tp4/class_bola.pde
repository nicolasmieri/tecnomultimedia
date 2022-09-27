class bola{
  color c;
  float posX;
  float posY;
  float velocidad;
  float dirX = random(2,6);
  float dirY = random(2,6);
 
  
bola(color tempC, float tempX, float tempY, float tempVel){
  
  c = tempC;
  posX = tempX;
  posY = tempY;
  velocidad = tempVel;
  
}

  void display(){
   fill(c);
   ellipse(posX, posY, 30, 30);      
   
  }

  void moverse(){
    
    posX += velocidad * dirX;
      if((posX >= width - 15) || (posX <= 15))  {
      dirX = -dirX;}
    
    posY += velocidad * dirY;
      if((posY >= height-15) || (posY <= 15)){
        dirY = -dirY;}
      
    
            
    
    
    }
    
  }
