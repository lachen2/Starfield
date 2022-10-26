Particle[] iru = new Particle[1000];
void setup()
{
  size(300, 300);
  for (int i = 100; i < iru.length; i ++)
    iru[i] = new Particle();
  for (int i = 0; i < 100; i ++)
    iru[i] = new OddballParticle();
// frameRate(1);
}
void draw()
{
  background(0);
  for (int i = 100; i < iru.length; i ++) {
    iru[i].show();
    iru[i].move();
  }
  for (int i = 0; i < 100; i ++) {
    iru[i].show();
    iru[i].move();
  }
}
class Particle
{
  double myX, myY, speed, angle;
  int myColor;
  double num;
  Particle() {
    myX = 150;
    myY = 150;
    num = 1;
    angle = (float)(Math.random() * 2) * Math.PI;
    speed = (Math.random() * 10);
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move() {
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed += Math.random();
  }
  void show() {
   fill(myColor);
   // ellipse((float)myX, (float)myY, 5, 5);
  // rotate((float)angle);
   rect((float)myX, (float)myY, 2, 10);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() {
    myX = 150;
    myY = 150;
    num = 1;
    angle = (float)(Math.random() * 2) * Math.PI;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    speed = (Math.random() * 2);
  }
  void move() {
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed -= Math.random();
  }
}
