Bacteria [] colony;
void setup()
{
  size(500, 500);
  frameRate(50);
  colony=new Bacteria[30];
  for (int i=0; i<colony.length; i++)
    colony[i] = new Bacteria(400,150);
}
void draw()
{
  background(137,207,240);
  for (int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}
void mouseClicked(){
  colony=new Bacteria[30];
  for (int i=0; i<colony.length; i++)
    colony[i] = new Bacteria(400,150);
}
class Bacteria
{
  int myX, myY, myColor;
  Bacteria(int x, int y)
  {
    myX=x;
    myY=y;
    myColor=(int)(Math.random()*255)-50;
  }
  void move()
  {
    myX=myX+(int)(Math.random()*11)-6;
    myY=myY+(int)(Math.random()*13)-6;
  }
  void show()
  {
    noStroke();
    fill(255,165,0);
    stroke(0);
    triangle(myX, myY, myX, myY+10, myX-10, myY+5);
       fill(255,255,102); //yellow for ducklings
    ellipse(myX + (22/2),myY + (25/2),(50/2),(30/2));
    ellipse(myX + (10/2),myY + (8/2),(30/2),(30/2));
    fill(0); 
    ellipse(myX + (7/2),myY+ (2/2),(5/2),(5/2));
  }
}


