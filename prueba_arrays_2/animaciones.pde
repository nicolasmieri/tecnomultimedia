void animaciones(){

if(avanzaDerecha == true){
  image(dinos[dinosCant], posX, posY);
  dinosCant = (dinosCant+1) % dinos.length;} 
  
  if(avanzaIzquierda == true){
  image(dinosIzq[dinosCant], posX, posY);
  dinosCant = (dinosCant+1) % dinosIzq.length;}
}
