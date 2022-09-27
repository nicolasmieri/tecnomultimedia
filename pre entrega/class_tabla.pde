class tabla{
  color c;
  float posX;
  float posY;
  float velocidad;
  float direccion = 1;

tabla(color tempC, float tempX, float tempY, float tempVel){
  c = tempC;
  posX = tempX;
  posY = tempY;
  velocidad = tempVel;

}
   
void display(){
  fill(c);
  rect(posX, posY, 90, 30);
   
   }
   
void moverse(){
   posX += velocidad * direccion;
  if((posX >= width-90) || (posX <= 0)){
    direccion = -direccion;
 
    
    }
}
}
