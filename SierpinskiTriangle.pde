float nice = ((float)(Math.random())*500)-250;
float leng = 50;
boolean StopLoop = true;
void setup()
{
  frameRate(60);
  size(1001,1001);
}
void draw()
{
  if (leng <= 1000 && StopLoop == false)
  {
    leng = leng + 5;
  }
  else if (leng >= 1000)
  {
    leng = 50;
  }fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
  //float leng = sqrt((mouseX*mouseX)+(mouseY*mouseY));
  background(238,203,173);
  fill((int)((Math.random())*255),(int)((Math.random())*255),(int)((Math.random())*255));
  //sierpinski(mouseX-(leng/2),mouseY+(leng/2),leng);
  sierpinski(500-(leng/2),500+(leng/2),leng);
}
void sierpinski(float x,float y,float len)
{
  if (len <= 10)
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

