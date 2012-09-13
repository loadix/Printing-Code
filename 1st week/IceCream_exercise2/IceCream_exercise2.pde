PGraphics canvas;

void setup() {
  size(600, 600);
  canvas = createGraphics(2550, 3300, P2D);
}

void draw() {
  canvas.beginDraw();
  background(255);
  strokeWeight(10);

  pushMatrix();
  translate(150, 30);


  //rectangle
  pushMatrix();
  translate(150, -70);
  rectMode(CENTER);
  rotate(PI/4.0);
  fill(200);
  scale(2);
  rect(120, 120, 200, 200);
  scale(0.5);
  rotate(PI/-4.0);
  popMatrix();


  //ellipse
  pushMatrix();
  translate(30, 20);
  fill(50);
  ellipse(120, 150, 200, 200);
  scale(0.5);
  popMatrix();


  //triangle
  pushMatrix();
  translate(30, 20);
  fill(120);
  triangle(30, 230, 120, 480, 210, 230); 
  popMatrix();


  popMatrix();

  canvas.endDraw();

  canvas.save("grab.png");
}

