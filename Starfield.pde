Particle[] iru = new Particle[1000];
void setup()
{
  size(300, 300);
  for (int i = 0; i < iru.length; i ++)
    iru[i] = new Particle();
//  frameRate(1);
}
void draw()
{
  background(0);
  for (int i = 0; i < iru.length; i ++) {
    iru[i].show();
    iru[i].move();
  }
}
class Particle
{
  double myX, myY, speed, angle;
  color myColor;
  Particle() {
    myX = 150;
    myY = 150;
    angle = (float)(Math.random() * 2) * Math.PI;
    speed = (float)(Math.random() * 8);
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move() {
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed += 1;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
   // rect(myX, myY, 5, 20);
  }
}

class OddballParticle //inherits from Particle
{
  
}
