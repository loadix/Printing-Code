class Ball 
{
  float diameter;
  float x; 
  float y;
  color c1;

  Ball(float anX, float anY, float aDiameter, color anc1) 
  {
    x = anX; 
    y = anY;
    diameter = aDiameter;
    c1 = anc1;
  }

  void display() 
  {
    colorMode(HSB, 360, 100, 100);      
    noStroke();
    fill(c1);
    ellipse(x, y, diameter, diameter);
  }
}

