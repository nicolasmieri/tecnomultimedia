class field{
 
 float posX;
 float posY;
 
 tabla tabla1, tabla2;
 bola bola1;

 
 
 field(float tempX, float tempY){
   
   tempX = posX;
   tempY = posY;
   
   tabla1 = new tabla(color(00,00,200), width/2, 500, 8);  
   tabla2 = new tabla(color(200,00,200), width/2, 50, 4);
   bola1= new bola(color(0, 100, 0), width/2, height/2, 1, random(2,6), random(2,6));
   
 }
 
 void display(){
 
   
   background(#269B1C);
  
   strokeWeight(5);
   stroke(#D8D8D8);
   line(100, 0, 100, height);
   line(500, 0, 500, height);
   line(100, 140, 500, 140);
   line(100, 460, 500, 460);
   stroke(#A7A7A7);
   line(0, height/2, width, height/2);
   strokeWeight(0);
   
   tabla1.display();
   tabla2.display();
   bola1.display();
   
    
 
 }
 
  void moverse(){
   
  tabla2.moverse();
  //
  bola1.moverse();
    
 }
  
 void eventosDeTeclado(){
 
 tabla1.moverseManual();

 }
 
 void rebotar(){
    
    if(dist(tabla1.posX,tabla1.posY,bola1.posX,bola1.posY)<=30){    
    {bola1.velocidad = bola1.velocidad*-1;}}
    
    if(dist(tabla2.posX,tabla2.posY,bola1.posX,bola1.posY)<=30){
     {bola1.velocidad = bola1.velocidad*-1;}}
    
 
 }
  
 
  
 }
