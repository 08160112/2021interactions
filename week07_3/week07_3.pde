class Ball
{
  float x,y,vx,vy;
  boolean dead;
  Ball()
  {
    x=random(500);
    y=random(100,200);
    vx=random(-4,4);
    vy=random(-4,4);
    dead=false;
  }
  void draw()
  {
    if(dead==true) return;
    ellipse(x,y,50,50);
    if(dist(mouseX,mouseY,x,y)<50){
      dead=true;
    }
    x=x+vx;
    y=y+vy;
    y=y+vy;
    if(y>500 || y<0)vy=-vy;
    if(x>500 || x<0)vx=-vx;
    y=y+vy;
    if(y>500 || y<0) vy=-vy;
    if(x>500 || x<0) vx=-vx;
  }
}
Ball[] balls;
void setup()
{
  size(500,500);
  balls = new Ball[20];
  for(int i=0;i<20;i++)
  {
    balls[i]=new Ball();
  }
}
void draw()
{
  background(255);
  for(int i=0;i<20;i++)
  {
    balls[i].draw();
  }
}
