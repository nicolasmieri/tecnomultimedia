class field{
 
 float posX;
 float posY;
 
 field(float tempX, float tempY){
   
   tempX = posX;
   tempY = posY;
   
 }
 
 void display(){
 
   
   fill(#269B1C);
   rect(0, 0, width, height);
   strokeWeight(5);
   stroke(#D8D8D8);
   line(100, 0, 100, height);
   line(500, 0, 500, height);
   line(100, 140, 500, 140);
   line(100, 460, 500, 460);
   stroke(#A7A7A7);
   line(0, height/2, width, height/2);
   strokeWeight(0);

 
 
 }
  
  
  
}
