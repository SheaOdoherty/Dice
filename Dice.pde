void setup()
{
  size(480,500);
  noLoop();
  background(0);
  textAlign(CENTER);
}
Die bob;
int counter = 0;
void draw()
{
  background(0);
  for (int y = 0; y<=410; y+=45) {
    for (int x = 0; x<=460; x+=40) {
      bob = new Die(x, y);
      counter = bob.rollNumber + counter;
      bob.show();
    }
  }
  
  fill(255, 255, 255);
  text("Total Number of Dots: " + counter, 250, 490);
  counter = 0;
}
void mousePressed()
{
  counter = 0;
  redraw();
}
class Die
{
  int myX, myY;
  int rollNumber;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    rollNumber=0;
    roll();
  }
  void roll()
  {
    if ((int)(Math.random() * 6 + 1) == 1)
      rollNumber = 1;
    else if ((int)(Math.random() * 6 + 1) == 2)
      rollNumber = 2;
    else if ((int)(Math.random() * 6 + 1) == 3)
      rollNumber = 3;
    else if ((int)(Math.random() * 6 + 1) == 4)
      rollNumber = 4;
    else if ((int)(Math.random() * 6 + 1) == 5)
      rollNumber = 5;
    else 
      rollNumber = 6;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 50 , 50);

    if (rollNumber == 1) {
      fill(0);
      ellipse(myX + 20, myY + 20, 7, 7);
    } else if (rollNumber == 2) {
      fill(0);
      ellipse(myX + 10, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 20, 7, 7);
    } else if (rollNumber == 3) {
      fill(0);
      ellipse(myX + 10, myY + 10, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
      ellipse(myX + 30, myY + 30, 7, 7);
    } else if (rollNumber == 4) {
      fill(0);
      ellipse(myX + 8, myY + 10, 7, 7);
      ellipse(myX + 32, myY + 10, 7, 7);
      ellipse(myX + 8, myY + 34, 7, 7);
      ellipse(myX + 32, myY + 34, 7, 7);
    } else if (rollNumber == 5) {
      fill(0);
      ellipse(myX + 8, myY + 10, 7, 7);
      ellipse(myX + 32, myY + 10, 7, 7);
      ellipse(myX + 8, myY + 34, 7, 7);
      ellipse(myX + 32, myY + 34, 7, 7);
      ellipse(myX + 20, myY + 20, 7, 7);
    } else if (rollNumber == 6) {
      fill(0);
      ellipse(myX + 8, myY + 8, 7, 7);
      ellipse(myX + 32, myY + 8, 7, 7);
      ellipse(myX + 8, myY + 36, 7, 7);
      ellipse(myX + 32, myY + 36, 7, 7);
      ellipse(myX + 8, myY + 20, 7, 7);
      ellipse(myX + 32, myY + 20, 7, 7);
    }

   
  }
}
