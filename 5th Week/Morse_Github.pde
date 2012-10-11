PFont font; 
int aSize;
boolean showGrid;

void setup()
{
  font = loadFont("Helvetica-120.vlw");
  showGrid = true;
  colorMode(HSB);    
  size(1280, 700);
  noStroke();
  fill(128, 30, 120, 60);
  background(255);
  smooth();

  aSize = 300;
  textFont(font, aSize);

  int numberOfColumns = 6;
  int pageMargin = 50;
  Grid grid = new Grid(numberOfColumns, pageMargin);
  ellipseMode(CORNER);

  //generate "A" in random column, but fixed Y position.
  int ranColA = round(random(5));  
  Column aColumn = grid.columns[ranColA];  

  int letterYPos = aSize + 10;
  text("A", aColumn.x, letterYPos); 


  if (showGrid) {
    //draw separation line
    stroke(0);
    int lineY = letterYPos + 10; // the line is drawn  10 pixels below the letter
    line(50, lineY, pageMargin + aColumn.w * numberOfColumns, lineY);
    noStroke();
  }


  for (int i = 0; i < 10; i++)
  {
    int hue = (int)random(50, 360);
    fill(hue, 100, 100, 70);
    int ranCol = round(random(3));
    aColumn = grid.columns[ranCol];    
    int yPos = (int)random(aColumn.y + aSize, aColumn.h - aColumn.w );
    ellipse(aColumn.x, yPos, aColumn.w, aColumn.w);
    rect(grid.columns[ranCol + 1].x, yPos + aColumn.w/4, aColumn.w, aColumn.w/2);
    rect(grid.columns[ranCol + 2].x, yPos + aColumn.w/4, aColumn.w, aColumn.w/2);
  }


  if (showGrid) {
    grid.display();
  }

  save("grab.tif"); //save file
}

