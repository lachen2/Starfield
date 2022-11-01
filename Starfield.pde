Particle[] iru = new Particle[1500];
void setup()
{
  size(500, 500);
  //background to blueish color
  background((int)(Math.random() * 40) + 155, 196, 230);
  for (int i = 20; i < iru.length; i ++)
    iru[i] = new Particle();
  for (int i = 0; i < 20; i ++)
    iru[i] = new OddballParticle();
//frameRate(3);
}
void draw()
{
  for (int i = 0; i < iru.length; i ++) {
    //draw firework
    iru[i].show();
    iru[i].move();
}
}
class Particle
{
  //declare member var
  double myX, myY, speed, angle, myOpacity;
  int myColor, lessCol;
  Particle() {
    //where the mouse is clicked is where the firework appears
    myX = mouseX;
    myY = mouseY;
    lessCol = 0;
    angle = (float)(Math.random() * 2) * Math.PI;
    speed = (Math.random() * 7);
    myColor = (int)(Math.random() * 200) + 50;
    myOpacity = (Math.random() * 130) + 40;
  }
  void move() {
    //fireworks moves outwards in all direction
    myX += Math.cos((float)(angle)) * speed;
    myY += Math.sin((float)(angle)) * speed;
    speed += Math.random();
  }
  void show() {
    //show firework
   noStroke();
   fill(color(myColor - lessCol, 100 - lessCol, myColor - lessCol), (float)myOpacity);
   lessCol += (int)(Math.random() * 6) + 3;
   myOpacity -= (lessCol / ((Math.random() * 10) + 70));
   rect((float)myX, (float)myY, 2, 10);
  }
}
class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle() {
    //set greenish black color
    myColor = color((int)(Math.random() * 50), (int)(Math.random() * 200), (int)(Math.random() * 10));
    speed = (Math.random() * 18);
    } 
  void move() {
    //move ellipses outward
    myX += Math.cos((float)(angle)) * speed * 1.8;
    myY += Math.sin((float)(angle)) * speed * 1.8;
  }
  void show() {
   //show greenish black ovals
   fill(myColor, (float)myOpacity);
   ellipse((float)myX, (float)myY, 3, 5);
  }
}

void mouseDragged() {
  //when mouse is dragged, draw another firework
  fill(255);
  for (int i = 100; i < iru.length; i ++)
    iru[i] = new Particle();
  for (int i = 0; i < 100; i ++) {
    iru[i] = new OddballParticle();
  }
  redraw();
}
