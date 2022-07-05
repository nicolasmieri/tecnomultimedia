boolean avanzaDerecha = false;
boolean avanzaIzquierda = false;
boolean sube = false;
boolean baja = false;


void movimientoDinos() {
  
if(sube == true) {
  posY -= movimiento2;}
  
if(baja == true) {
  posY += movimiento2;}
  
if(posY <= 380){
  baja = true;
  sube = false;}
  
if(posY == 560){
  baja = false;
  sube = true;}
  
  
if(avanzaDerecha == true) {
    posX += movimiento;}
  
  if(avanzaIzquierda == true){
    posX -= movimiento;}
    
  if(posX >= 600){
    avanzaDerecha=false;
    avanzaIzquierda=true;}
    
  if(posX <= 0){
    avanzaDerecha=true;
    avanzaIzquierda=false;}
}
