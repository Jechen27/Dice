int total = 0;
void setup()
{
  noLoop();
  size (300,300)
}
void draw()
{
  background (300,300);
  for (int y=30;y<260;y=y+40)
  {
   for (int x=30;x<300;x=x+40)
   {
     Die bob = new Die(x,y);
     bob.roll();
     bob.show();
   }
  }
  fill(255);
  textSize(20);
  text("The sum of all dice is " + total,20,270);
}
void mousePressed()
{
  redraw();
  total = 0;
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
    numRoll=(int)(Math.random()*6+1);
    total = total + numRoll;
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
      ellipse(myX,myY,8,8);
     }
     if (numRoll == 2)
     {
      ellipse(myX-9,myY-9,8,8);
      ellipse(myX+9,myY+9,8,8);
     }  
     if (numRoll == 3)
     {
       ellipse(myX-9,myY-9,8,8);
       ellipse(myX,myY,8,8);
       ellipse(myX+9,myY+9,8,8);
     }
     if (numRoll == 4)
     {
      ellipse(myX-9,myY-9,8,8);
      ellipse(myX+9,myY+9,8,8);
      ellipse(myX+9,myY-9,8,8);
      ellipse(myX-9,myY+9,8,8);
     }
     if (numRoll == 5)
     {
      ellipse(myX-9,myY-9,8,8);
      ellipse(myX+9,myY+9,8,8);
      ellipse(myX,myY,8,8);
      ellipse(myX+9,myY-9,8,8);
      ellipse(myX-9,myY+9,8,8); 
     }
     if (numRoll == 6)
     {
      ellipse(myX-9,myY-9,8,8);
      ellipse(myX+9,myY+9,8,8);
      ellipse(myX-9,myY,8,8);
      ellipse(myX+9,myY,8,8);
      ellipse(myX+9,myY-9,8,8);
      ellipse(myX-9,myY+9,8,8);
     }
  }
}
