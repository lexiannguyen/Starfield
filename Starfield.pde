//your code here
Particle[] stars = new Particle[100];
int[] myColors = {#a2f2b8, #eaf2a2, #f2caa2, #a8edeb, #a8d5ed, #b7b7eb, #d2b7eb, #ebb7eb, #ebb7ba};  
void setup()
{
  //your code here
  size(400, 400);
  for(int i = 0; i<6; i++){
    stars[i] = new OddballParticle();
  }
    for(int i = 6; i<stars.length; i++){
   stars[i] = new Particle(); 
  }
}

void draw()
{
  //your code here
  background(24, 42, 92);
  noStroke();
   /*int tx = 200;
   int ty = 10;
   textAlign(CENTER);
   for(int i = 0; i<30; i++){
     //background(24, 42, 92);
     ty += 5;
     text("happy halloween", tx, ty);
   }*/

  for(int i = 0; i<stars.length; i++){
   stars[i].move();
   stars[i].show();
  }

  
    
}
void mousePressed() {
  for(int i = 0; i<stars.length; i++){
   stars[i].myX = 200.0;;
   stars[i].myY = 200.0;
  }
  redraw();
}

class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  float mySize;
  int myColor;
  
  Particle()
  {
    myX = 200.0;
    myY = 200.0;
    mySpeed = (Math.random()*60.0);
    myAngle = (Math.random()*(2*Math.PI));
    mySize = (float)(Math.random()*5.0)+1.0;
    
    myColor = (myColors[(int)(Math.random()*myColors.length)]);
   // myColor = color(
    


    
  }
  void move(){
    myX += (Math.cos(myAngle))*mySpeed;
    myY += (Math.sin(myAngle))*mySpeed;
  }
  void show() {
     fill(myColor);
     ellipse((float)myX, (float)myY, mySize, mySize);
  }
  
}
class OddballParticle extends Particle//inherits from Particle
{
  //your code here
  OddballParticle(){
    myX = 200.0;
    myY = 200.0;
    mySpeed = (Math.random()*10.0);
    myAngle = (Math.random()*(2*Math.PI));
    mySize = (float)(Math.random()*15.0)+30.0;
    myColor = (myColors[(int)(Math.random()*myColors.length)]);
  }
    
}
