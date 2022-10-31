Particle[] iru = new Particle[900];
void setup()
{
  size(400, 400);
  background(255, 216, 140);
  for (int i = 20; i < iru.length; i ++)
    iru[i] = new Particle();
  for (int i = 0; i < 20; i ++)
    iru[i] = new OddballParticle();
//frameRate(3);
}
void draw()
{
  for (int i = 0; i < iru.length; i ++) {
    iru[i].show();
    iru[i].move();
}
}
class Particle
{
  double myX, myY, speed, angle;
  int myColor, lessCol;
  Particle() {
    myX = mouseX;
    myY = mouseY;
    lessCol = 0;
    angle = (float)(Math.random() * 2) * Math.PI;
    speed = (Math.random() * 7);
    myColor = (int)(Math.random() * 50) + 200;
  }
  void move() {
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed += Math.random();
  }
  void show() {
   noStroke();
   fill(color(myColor - lessCol, 250 - lessCol, 50 + lessCol));
   lessCol += 5;
   rect((float)myX, (float)myY, 2, 10);
  }
}
class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() {
    myColor = color((int)(Math.random() * 50), (int)(Math.random() * 200), (int)(Math.random() * 10));
    speed = (Math.random() * 18);
    } 
  void move() {
    myX += Math.cos((float)(angle)) * speed * 1.2;
    myY += Math.sin((float)(angle)) * speed * 1.2;
  }
  void show() {
   fill(myColor);
   ellipse((float)myX, (float)myY, 3, 5);
  }
}

void mousePressed() {
  for (int i = 100; i < iru.length; i ++)
    iru[i] = new Particle();
  for (int i = 0; i < 100; i ++)
    iru[i] = new OddballParticle();
  redraw();
}
