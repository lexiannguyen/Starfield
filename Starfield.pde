//your code here
PImage img;
Particle[] stars = new Particle[400];
int[] myColors = {#a2f2b8, #eaf2a2, #f2caa2, #a8edeb, #a8d5ed, #b7b7eb, #d2b7eb, #ebb7eb, #ebb7ba};  
void setup()
{
  //your code here
  size(400, 400);
  img = loadImage("tie2.png");
  /*for(int i = 0; i<50; i++){
    int bgx = (int)(Math.random()*400);
    int bgy = (int)(Math.random()*400);
    ellipse(bgx, bgy, 5, 5);
  }*/
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

  
  //image(img, 200, 200, width/2, height/2);
  noStroke();
  fill(255);
  
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

  fill(136, 219, 155);
  ellipse(200, 370, 100, 70); //ears and head
  ellipse(150, 360, 90, 30);
  ellipse(250, 360, 90, 30);
  fill(255, 196, 220); //ears pink
  ellipse(140, 360, 60, 20); 
  ellipse(260, 360, 60, 20);
  fill(136, 219, 155);
  ellipse(200, 370, 100, 70); //head again
  fill(255, 196, 220); 
  ellipse(200, 370, 10, 6); //mouth?
  fill(212, 166, 121);
  rect(150, 380, 100, 30);
  fill(0, 0, 0);
  ellipse(180, 360, 18, 13);
  ellipse(220, 360, 18, 13);
    
}
void mousePressed() {
  for(int i = 0; i<stars.length; i++){
   stars[i].myX = mouseX;
   
   stars[i].myY = mouseY;
   
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
    myX = mouseX;
    myY = mouseY;
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
