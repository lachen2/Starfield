Particle[] iru = new Particle[1000];
double j = 1;
void setup()
{
  size(300, 300);
  for (int i = 0; i < iru.length; i ++)
    iru[i] = new Particle();
 frameRate(1);
}
void draw()
{
  background(0);
  for (int i = 0; i < iru.length; i ++) {
    iru[i].num = j;
    j += 0.5;
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
    speed = (double)(Math.random() * 12);
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move() {
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed += 1;
  }
  void show() {
   fill(myColor);
   // ellipse((float)myX, (float)myY, 5, 5);
   rotate((float)angle);
   num ++;
   if (num > 6)
     num = 1;
   rect((float)myX, (float)myY, 2, 10);
  }
}

class OddballParticle //inherits from Particle
{
  
}
