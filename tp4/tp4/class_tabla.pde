class tabla{
  color c;
  float posX,  posY, velocidad, direccion = 1;
  boolean izq, der;
  

tabla(color tempC, float tempX, float tempY, float tempVel){
  c = tempC;
  posX = tempX;
  posY = tempY;
  velocidad = tempVel;

}
   
void display(){
  
  fill(c);
  rect(posX, posY, 70, 20);

   
   }
   
void moverse(){
   posX += velocidad * direccion;
  if((posX >= width-40) || (posX <= 40)){
    direccion = -direccion;
  }}



void moverseManual(){
  
 println("der:" + der ); 
 println("izq;" + izq );

  
 if(key== 'd'){
   der=true;
 }else{der=false;}
 
 if(key== 'a'){
   izq=true;
 }else{izq=false;}
 
 
 
 if(der== true){
   posX += velocidad;}
     
 if(der== false){
   posX -= 0;}  
 
 if(posX >= width-40 ){
   posX-=velocidad;}                

   
   
   //
   
 if(izq== true){
   posX -= velocidad;}  
   
 if(izq== false){
   posX -= 0;}
 
  if(posX <= 40 ){
    posX+=velocidad;}
  

 }
 
  
  }
   



  


   
    
