import geomerative.*;


void setup() 
{
  size(3400, 1500);
  background(255);
  smooth();

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

  translate(100, 1200);
  strokeWeight(0.1);

  for (int i = 0; i < pnts.length; i++ )
  {
    line(pnts[i].x, pnts[i].y, pnts[i].x+20, pnts[i].y-20);
    line(pnts[i].x, pnts[i].y, pnts[i].x+20, pnts[i].y+20);
  }
  save("grab6.tif");
}

