
field field1;


void setup(){
  
  field1= new field(0, 0);
  size(600,600);
  
}

void draw(){
  
  rectMode(CENTER);
  field1.display();
  field1.moverse();
  field1.rebotar();

}

void keyPressed(){
  field1.eventosDeTeclado();
}
