boolean reset;

class wasted{
  
  float posX;
  float posY;
  
    wasted(float tempX, float tempY){
      
      posX = tempX;
      posY = tempY;          
  

}

void display(){
  

 PImage wasted;
 wasted = loadImage("wasted.png");
  background(wasted);  
  
  
  if(reset == true) {
    nivel1.display();}
  }
  
 }

 
  


  
