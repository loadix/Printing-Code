//PGraphics canvas;
//int canvas_width = 2550;
//int canvas_height = 3300;

void setup() {
  size(600, 600);
  background(255);
  //canvas = createGraphics(canvas_width, canvas_height, P2D);
  // canvas.beginDraw();
  // canvas.rect(0,0,50,50);
  //canvas.endDraw();
  //canvas.save("grab.png");


  //rectangle
  strokeWeight(15);
  rect(120, 120, 200, 200);
  fill(120);
 

  //ellipse
  pushMatrix();
  translate(30, 20);
  ellipse(120, 150, 200, 200);
  scale(0.5);
  fill(50);
  popMatrix();


  //triangle
  pushMatrix();
  translate(30, 20);
  triangle(30, 230, 120, 480, 210, 230);
  fill(120); 
  popMatrix();
}

