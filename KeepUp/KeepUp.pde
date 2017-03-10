
int count = 1;
Ball[] b = new Ball[10];

void setup(){
  size(800, 600);
  for (int i = 0; i<count; i++){
    b[i] = new Ball();
  }
}
void draw(){
  background(133, 66, 69);
  for (int i = 0; i<count; i++){
    b[i].exist();
    b[i].update();
    b[i].edges();
  }
}

void mousePressed(){
  for (int i = 0; i<count; i++){
    b[i].clicked();
    if(b[i].c == 25){
      count+=1;
      setup();
  }
}
}