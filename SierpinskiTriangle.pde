int aN;
int limit1;
int limit2;
public void setup()
{
  size(400,400);
}
public void draw()
{
background(255);
sierpinski(limit1-aN*5,limit2+aN*5,aN*10);
}
public void mouseDragged()//optional
{
limit1 = mouseX;
limit2 = mouseY;
}
public void mouseWheel(MouseEvent event){
  aN = aN+event.getCount();
}
public void keyPressed()
{
  if(keyCode == UP)
     aN--;
  if(keyCode == DOWN)
     aN++;
}
public void sierpinski(int x, int y, int len) 
{
  if(len>20){
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y,len/2);
    sierpinski(x+len/4, y-len/2,len/2);
  }
  else{
    triangle(x,y,x+len,y,x+len/2,y-len);
    //triangle(x,y,x+a,y,x+a,y-a);
  }
}
