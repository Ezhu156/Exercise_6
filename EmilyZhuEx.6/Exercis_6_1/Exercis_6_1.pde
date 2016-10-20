Monster bob;
Monster2 jim;
Monster2 bill;

void setup() {
  size(800, 800);
  background(0);
  bob= new Monster(450, 450);
  jim= new Monster2(700,1000);
  bill= new Monster2(1000,500);
}

void draw() {
  scale(0.7, 0.7);
  background(0);
  bob.change();
  bob.display();
  bob.eyes();
  bob.mouth();
  bob.move();
  bob.feet(255,50,50);
  bob.eyecolor (0,125,250);
  
  jim.constant(1,0);
  jim.display();
  jim.mouth();
  jim.eyecolor(255,39,200);
  jim.feet(23,200,255);
  jim.eyes();
  jim.change();
  
  bill.display();
  bill.mouth();
  bill.eyecolor(148,84,255);
  bill.feet(184,232,77);
  bill.eyes();
 
}