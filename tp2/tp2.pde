//https://youtu.be/T56IUww-MhM

int a = 50;
int b;
int velocidad = 2;
float posX = 20;
boolean avanzaDerecha = false;
boolean avanzaIzquierda = false;


void setup(){
  
  size(600,500);
  b=height/2;
  

 
  }
  
 
  void draw(){   
   
    
    background(255); 
    
   
   
  stroke(0);
  strokeWeight(20);
   for(int i=0; i<a; i++){
     line(i*a, 0, i*a, 330);
   }  
   
    stroke(255); 
    strokeWeight(10);
   line(0, 338, 600, 338);
  
  cuadrados();
   
  botones();
  
  
  

  if(avanzaDerecha == true){
     posX += velocidad;
  }           
  
  if(avanzaIzquierda == true){
     posX -= velocidad;
}
  
  if(posX >= 500){
   avanzaDerecha=false;
   avanzaIzquierda=true;
}

if(posX <= 0){
   avanzaDerecha=true;
   avanzaIzquierda=false;
}
  
  
}  

void  mouseClicked(){
  
  float d1 = dist(mouseX, mouseY, 333, 400);
    int r1 = 80/2;
    
    if(d1 < r1){
      
      avanzaDerecha = true;
      avanzaIzquierda = false;
      
    }

  float d2 = dist(mouseX, mouseY, 400, 400);
    int r2 = 60/2;

    if(d2 < r2){
      avanzaDerecha =  false;
      avanzaIzquierda = true;
    }
    
   float d3 = dist(mouseX, mouseY, 500, 400);
    int r3 = 60/2;

    if(d3<r3){
      avanzaDerecha =  false;
      avanzaIzquierda = false;
      posX = 20;
    }

}
      

 
