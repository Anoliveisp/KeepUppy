class Ball{
  PVector pos = new PVector();
  PVector vel = new PVector();
  PVector acc = new PVector();
  float grav = .02;
  int c = 0;
  PFont f;
  Ball(){
    pos.x = random(30, width-30);
    pos.y = 0;
    vel.x = random(-.2,.2);
    vel.y = 0;
    fill(random(0,255),random(0,255),random(0,255));
  }
  void update(){
    f = createFont("Arial" , 20, true);
    acc.y = grav;
    pos.add(vel);
    vel.add(acc);
    text(c, width-40, 40);
  }
  void exist(){
    
    ellipse(pos.x, pos.y, 40, 40);
  }
  void edges(){
    if(pos.y >= height-20){
      textFont(f, 20);
      textAlign(CENTER);
      text("YOU LOSE", width/2, 200);
      c = 0;
      vel.y = vel.y*-.5;
    }
    if(pos.x <= 20 || pos.x >= width-20){
      vel.x = vel.x*-1;
    }
  }
  void clicked(){
    if(((mouseX<= pos.x +40)&&(mouseX >= pos.x-40))&&((mouseY <= pos.y+40)&&(mouseY >= pos.y-40))){ 
    c+=1;
    if(vel.y>0){
    vel.y=vel.y*-.75;
    }else{
      vel.y-=1;
    }
    vel.x = vel.x-1;
    }
  }
}