//your code here
Particle[] stars = new Particle[20];
void setup()
{
  //your code here
  size(400, 400);
    for(int i = 0; i<stars.length; i++){
   stars[i] = new Particle(); 
  }
}


void draw()
{
  //your code here
  background(51);
  noStroke();
  

  for(int i = 0; i<stars.length; i++){
   stars[i].move();
   stars[i].show();
  }
  
    
}
class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  float mySize;
  Particle()
  {
    myX = 200.0;
    myY = 200.0;
    mySpeed = (Math.random()*30.0);
    myAngle = (Math.random()*(2*Math.PI));
    mySize = (float)(Math.random()*15.0)+5.0;
    


    
  }
  void move(){
    myX += (Math.cos(myAngle))*mySpeed;
    myY += (Math.sin(myAngle))*mySpeed;
  }
  void show() {
     fill(255);
     ellipse((float)myX, (float)myY, mySize, mySize);
  }
  
}

/*class OddballParticle //inherits from Particle
{
  //your code here
}
*/
