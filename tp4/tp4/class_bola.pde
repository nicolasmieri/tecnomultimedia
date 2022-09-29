class bola{
  color c;
  float posX, posY, velocidad, dirX, dirY;
 
  
bola(color tempC, float tempX, float tempY, float tempVel, float tempDirX, float tempDirY){
  
  c = tempC;
  posX = tempX;
  posY = tempY;
  velocidad = tempVel;
  dirX = tempDirX;
  dirY = tempDirY;
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
       dirY = -dirY;
     
 }
 
     
    
    }
    
  }
