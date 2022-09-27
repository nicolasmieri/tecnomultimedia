tabla tabla1;
tabla tabla2;
bola bola1;
field field1;


void setup(){
  size(600,600);
  tabla1 = new tabla(color(00,00,200), width/2, 500, random(2.5,3));  
  tabla2 = new tabla(color(200,00,200), width/2, 50, random(2.5,3));
  bola1= new bola(color(0, 100, 0), width/2, height/2, 1);
  field1= new field(0, 0);
}

void draw(){

  field1.display();
  tabla1.moverse();
  tabla1.display();
  tabla2.moverse();
  tabla2.display();
  bola1.display();
  bola1.moverse();
}
