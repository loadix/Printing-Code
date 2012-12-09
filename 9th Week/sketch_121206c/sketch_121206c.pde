PGraphics canvas;
int canvas_width = 1200;
int canvas_height = 1200;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;


void setup() {
  size(720, 720); 
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  calculateResizeRatio();
  canvas.beginDraw();
  canvas.background(255);
  canvas.smooth();

  //------------------Elliptic Frame ----------------
  canvas.strokeWeight(3);
  canvas.stroke(0);
  canvas.fill(0);
  canvas.ellipseMode(CENTER);
  canvas.ellipse(canvas_width/2, canvas_height/2, canvas_width, canvas_height);

  canvas.stroke(255);
  canvas.fill(255);
  canvas.ellipse(canvas_width/2, canvas_height/2, 50, 50);

  //----------------------Text-----------------------
  PFont font;
  font = loadFont("Arial-Black-20.vlw");
  canvas.fill(255);
  canvas.textFont(font);
  canvas.text("Mónica Bate - Fundamental", 880, canvas_height/2);
  //---------------------------------------------------


  PVector pointsCloudCenter = new PVector(canvas.width*1/6, canvas.height/2); //defines start of points drawing

  float cloudRadius = canvas.height/4; //defines the radius of what will be drawn with lines
  int pointsNumber = 3000; //defines amount of points 

  for (int i=0; i<pointsNumber; i++) { 
    pointsCloudCenter.x += random(-cloudRadius/10, cloudRadius/10);
    pointsCloudCenter.y = pointsCloudCenter.y + random(-cloudRadius/10, cloudRadius/10); //paso

    canvas.pushMatrix();
    canvas.translate(pointsCloudCenter.x, pointsCloudCenter.y);
    canvas.noStroke();
    canvas.fill(255, 255, 255);
    canvas.ellipse(0, 0, 5, 5);
    canvas.popMatrix();
  }



  //-----Closes PGraphics-----\\
  canvas.endDraw();
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  canvas.save("makerbot.tif");
}
//-----ResizeRatio for PGraphics-----\\
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  if 
    (ratioWidth < ratioHeight)  ratio = ratioWidth;
else                          
ratio = ratioHeight;
}

