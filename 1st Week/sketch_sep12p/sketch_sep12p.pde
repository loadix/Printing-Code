/* Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/* Setup
_________________________________________________________________ */

void setup()
{
  size(1300, 850);
  background(30);
  
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  
  calculateResizeRatio();
  
  //-------
  
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
  
  
  //-------
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  canvas.save("grab.png");
}

/* Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight) ratio = ratioWidth;
  else ratio = ratioHeight;
}
