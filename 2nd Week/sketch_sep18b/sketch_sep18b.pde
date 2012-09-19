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

int canvasWidth = 593;
int canvasHeight = 768;


void setup() {
  smooth();
  size(canvasWidth, canvasHeight);
  background(0);

  //screen's white rectangle
  noStroke();
  fill(255);
  rect(0, 0, canvasWidth, canvasHeight /1.5);

  //Wet
  strokeWeight(1);
  stroke(255);
  noFill();

  for (int i = 0; i < canvasWidth; i++) {
    beginShape();
    vertex(0, canvasHeight /1.2);
    bezierVertex(0, canvasHeight /1.2, i, canvasHeight /1.4, i, canvasHeight /1.2);
  }
  endShape();


  //Sharp

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

