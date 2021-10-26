//your code here
void setup()
{
  //your code here
  size(400, 400);
}
void draw()
{
  //your code here
  background(51);
  Particle bob = new Particle();
   bob.move();
  bob.show();
    
}
class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  Particle()
  {
    myX = 200.0;
    myY = 200.0;
    mySpeed = (Math.random()*10);
    myAngle = (Math.random()*(2*Math.PI));
    
  }
  void move(){
    myX += (Math.cos(myAngle)*mySpeed);
    myY += (Math.sin(myAngle)*mySpeed);
  }
  void show() {
     fill(0, 0, 0);
     ellipse((float)myX, (float)myY, 10.0, 10.0);
  }
  
}

/*class OddballParticle //inherits from Particle
{
  //your code here
}
*/
