Particle[] iru = new Particle[100];
void setup()
{
  size(300, 300);
  for (int i = 0; i < iru.length; i ++)
    iru[i] = new Particle();
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
  float myX, myY, angle, speed;
  color myColor;
  Particle() {
    myX = 150;
    myY = 150;
    angle = 0;
    speed = 20;
    myColor = 200;
  }
  void move() {
    myX += cos(angle);
    myY += sin(angle);
  }
  void show() {
    rect(myX, myY, 5, 20);
  }
}

class OddballParticle //inherits from Particle
{
  //your code here
}
