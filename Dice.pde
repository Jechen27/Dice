int x =20;
int y =20;
void setup()
{
  noLoop();
}
void draw()
{
  background (300,300);
  Die bob = new Die(x,y);
  //for (int x=10;x<300;x=x+20)
  //{
    bob.roll();
    bob.show();
  //}
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY,numRoll;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
  }
  void roll()
  {
    numRoll=1;
  }
  void show()
  {
     noStroke();
     fill(255,255,255);
     ellipse(myX-8,myY-8,20,20);
     ellipse(myX+8,myY-8,20,20);
     ellipse(myX+8,myY+8,20,20);
     ellipse(myX-8,myY+8,20,20);
     rect(myX-6,myY-18,12,18);
     rect(myX-6,myY,12,18);
     rect(myX-18,myY-6,18,12);
     rect(myX,myY-6,18,12);
     fill(0);
     if (numRoll == 1)
     {
      ellipse(x,y,5,5);
     }
     if (numRoll == 2)
     {
      ellipse(x-10,y-10);
     }  
  }
}
