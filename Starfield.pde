Particle [] group = new Particle[151];
void setup()
{
  size(300,300);
  background(255);
  for(int i = 0; i < 150; i++) {
    group[i] = new Particle();
  }
  group[150] = new oddBall();
}

void draw()
{
  fill(255);
  rect(-1,-1,300,300);
  for(int i = 0; i < group.length; i++) {
    group[i].move();
    group[i].show();
  }
}

class Particle 
{
  int myColor;
  double myAngle, mySpeed, myX, myY, mySize;
  Particle() {
    myX = 150;
    myY = 150;
    mySize = (int)(Math.random()*20);
    myAngle = Math.random()*3*PI;
    mySpeed = (int)(Math.random()*10);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 2,2);
    if(myY > 300) {
      myY = 100;
    }
    if(myX > 300) {
      myX = 100;
    }
  }
  void move() {
    myX = myX + Math.cos(myAngle);
    myY = myY + Math.sin(myAngle);
  }
}

class oddBall extends Particle
{
  oddBall()
  {
    myX = 150;
    myY = 150;
    mySize = (int)(Math.random()*20);
    myAngle = Math.random()*1.5*PI;
    mySpeed = (int)(Math.random()*10);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 30);
  }
  void show() {
    fill(myColor);
    rect((int)myX,(int)myY,10,10);
    if(myX > 300) {
      myX = 100;
    }
    if(myY > 300) {
      myY = 100;
    }
  }
}

