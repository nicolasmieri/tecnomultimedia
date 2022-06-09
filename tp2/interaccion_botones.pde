void interacciones(){
  


  mousePressed();{
  
    float d1 = dist(mouseX, mouseY, 333, 400);
    int r1 = 80/2;
    
    if(d1 < r1){
     
      posX += velocidad;}

    float d2 = dist(mouseX, mouseY, 400, 400);
    int r2 = 60/2;
  
    if(d2 < r2){
      
      posX -= velocidad;}
             
    float d3 = dist(mouseX, mouseY, 500, 400);
    int r3 = 60/2;
    
    if(d3<r3){
      
      posX = 20;}
  
}
}
