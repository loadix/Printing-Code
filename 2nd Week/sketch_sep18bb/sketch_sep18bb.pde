/*
Printing Code class
 Mónica Bate
 
 2nd Assignment:
 "Write a Processing sketch that outputs 2 shapes on a page. 
 
 The first shape should be inspired by the word “wet”. 
 The second shape should be inspired by the word “sharp”. 
 
 Use only black and white. 
 
 You have to use beginShape(), and all vertex points have 
 to be created in a for loop."
 */

//----------------- Print
PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;
//------------------



int canvasWidth = 593;
int canvasHeight = 768;


void setup() {
  smooth();
  size(canvasWidth, canvasHeight);
  background(0);


  //---------------Print
  canvas = createGraphics(canvas_width, canvas_height, P2D);
  calculateResizeRatio();
  //--------------------


  //screen's white rectangle
  noStroke();
  fill(255);
  rect(0, 0, canvasWidth, canvasHeight /1.5);

  //Wet
  strokeWeight(2);
  stroke(255);
  noFill();
  for (int i = 0; i < canvasWidth; i++) {
    canvas.beginShape();
    vertex(0, canvasHeight /1.2);
    bezierVertex(0, canvasHeight /1.2, i, canvasHeight /1.4, i, canvasHeight /1.2);
  }
  canvas.endShape();


  //Sharp stroke(0);
  strokeWeight(1);
  stroke(0);
  beginShape();

  int xPos = 0;
  int yPos = 0;

  for (int i = 0; i < 50; i++)
  {
    vertex(i, i);
    vertex(random(canvasWidth), random(canvasHeight - 270));
  }

  endShape();
}


//--------------------------------- Calculate resizing
void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight) ratio = ratioWidth;
  else ratio = ratioHeight;
}
