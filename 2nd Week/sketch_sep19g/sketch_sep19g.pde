void setup()
{
  size(400, 250);
  smooth();
  background(255);
  stroke(0);
  noFill();

  // int x = 0;
  // int y = 0;

  for (int i = 0; i < 10; i++)
  {
    beginShape();
    translate(random (125), random (35));
    vertex(0, 50);
    bezierVertex(i, 50, 25, 0, 50, 50);
    bezierVertex(50, 50, 75, 100, 100, 50);
    bezierVertex(100, 50, 125, 0, 150, 50);
    //vertex(150, 150);
    //vertex(0, 150);
    endShape();
  }
}

