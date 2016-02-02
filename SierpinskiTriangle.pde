int a;
int limit1;
int limit2;
public void setup()
{
  size(400,400);
}
public void draw()
{
background(255);
sierpinski(limit1-a*5,limit2+a*5,a*10);
}
public void mouseDragged()//optional
{
limit1 = mouseX;
limit2 = mouseY;
}
public void mouseWheel(MouseEvent event){
  a = a+event.getCount();
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
