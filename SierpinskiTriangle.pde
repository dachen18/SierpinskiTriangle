float nice = ((float)(Math.random())*500)-250;
float leng = 50;
boolean StopLoop = true;
void setup()
{
  frameRate(240);
  size(1001,1001);
}
void draw()
{
  if (leng <= 1000 && StopLoop == false)
  {
    leng = leng + 2.5;
  }
  else if (leng >= 1000)
  {
    leng = 50;
  }
  //
  background(238,203,173);
  //
  fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
  sierpinski(500-(leng/2),500+(leng/2),leng);
  sierpinski(0+(leng/2),1000-(leng/2),leng);
  sierpinski(1000-(leng*1.5),0+(leng*1.5),leng);
  sierpinski(0+(leng/2),0+(leng*1.5),leng);
  sierpinski(1000-(leng*1.5),1000-(leng/2),leng);

}
void sierpinski(float x,float y,float len)
{
  if (len <= 30)
  {
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else
  {
    fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
    sierpinski(x,y,len/2);
    fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
    sierpinski(x+len/2,y,len/2);
    fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
void mouseClicked()
{
  StopLoop = true;
}
void keyPressed()
{
  if (key == ' ' && StopLoop == true)
  {
    StopLoop = false;
  }
}

