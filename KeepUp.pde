Ball b = new Ball();


void setup(){
  size(800, 600);
  b = new Ball();
}
void draw(){
  background(133, 66, 69);
  b.exist();
  b.update();
  b.edges();
}

void mousePressed(){
  b.clicked();
}