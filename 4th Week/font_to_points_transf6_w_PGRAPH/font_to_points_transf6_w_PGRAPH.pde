/*
Printing Code
Code by: Rune Madsen
Modified by:Mónica Bate
4th Assignment:
This week you’re going to design a word. Pick a word and make a typeface around it. 
The important thing is that you draw the letters using some kind of rule-based logic.
This means that you should not draw the font by hand first, and then translate that 
into code. Instead, look at the examples we looked at in class, and try to come up 
with your own typeface system - even if it’s very simple. You can create it from 
scratch, or use an already existing font and manipulate its outline points. 
If you wish to use your own printing mechanism, this would be the perfect time to 
do so.
*/

import geomerative.*;
int canvasHeight = 6600;
int canvasWidth = 5100;
PGraphics canvas;


void setup() 
{
  size(3400, 1500);
  
  canvas = createGraphics(canvasWidth, canvasHeight);
  canvas.beginDraw();
  
  canvas.background(255);
  canvas.smooth();

  int fontSize = 1200;

  // initialize the geomerative library
  RG.init(this);

  // create a new font
  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);

  // tell library we want 11px between each point on the font path
  RCommand.setSegmentLength(10); 

  // get the points on font outline.
  RGroup grp;
  grp = font.toGroup("ETAB");
  grp = grp.toPolygonGroup();
  RPoint[] pnts = grp.getPoints();

  canvas.translate(900, 3700);
  canvas.strokeWeight(0.1);

  for (int i = 0; i < pnts.length; i++ )
  {
    canvas.line(pnts[i].x, pnts[i].y, pnts[i].x+20, pnts[i].y-20);
    canvas.line(pnts[i].x, pnts[i].y, pnts[i].x+20, pnts[i].y+20);
  }
  
  canvas.endDraw();
  image(canvas, 0, 0, canvas.width * 0.1, canvas.height * 0.1);
  canvas.save("grab6.tif");
}

