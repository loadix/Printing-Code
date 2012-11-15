PGraphics canvas;
int canvas_width = 5100;
int canvas_height = 3300;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{
  size(1024, 720);
  
canvas = createGraphics(canvas_width, canvas_height, P2D);
  calculateResizeRatio();
  
 // canvas.colorMode(HSB, 360, 100, 100, 100 );
  canvas.beginDraw();
  canvas.background(255); 
  canvas.smooth();
  canvas.stroke(0);
  canvas.strokeWeight(1.5);
  canvas.noFill();

  for (int x = 0; x < canvas.width-200; x +=  100)//350
  {
    for (int y = 0; y < canvas.height-50; y += 100)//250
    {
      drawTile(x, y);
    }
  }
 canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  canvas.save("makerbot.tif");
}

void drawTile(int x, int y)
{
  canvas.pushMatrix();
  canvas.translate(x, y);
  drawLeftShapeOther();
  canvas.translate(75, 30);
  drawLeftShape();
  canvas.popMatrix();
}


void drawLeftShape()
{
  canvas.stroke(0, 0, 0);
  //fill(random(296), random(80), random(80), 80);
 // canvas.scale(2.0);
  canvas.beginShape();
  canvas.vertex(10, 0); //1
  canvas.vertex(90, 0); //2
  canvas.vertex(100, 10); //3
  canvas.vertex(100, 50); //4
  canvas.vertex(70, 50); //5
  canvas.vertex(50, 70); //6
  canvas.vertex(10, 70);//7
  canvas.vertex(0, 60); //8
  canvas.vertex(0, 10); //9
  canvas.endShape(CLOSE);
}


void drawLeftShapeOther()
{
  canvas.stroke(0, 0, 0);
  //canvas.fill(random(296), random(80), random(80), 80);
  //canvas.scale(2.0);
  canvas.beginShape();
  canvas.vertex(50, 0); //1
  canvas.vertex(130, 0); //2
  canvas.vertex(140, 10); //3
  canvas.vertex(140, 60); //4
  canvas.vertex(130, 70); //5
  canvas.vertex(90, 70); //6
  canvas.vertex(70, 50);//7
  canvas.vertex(40, 50);
  canvas.vertex(40, 10); //8
  canvas.vertex(50, 0); //9
  canvas.endShape(CLOSE);
}



//-----
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}
