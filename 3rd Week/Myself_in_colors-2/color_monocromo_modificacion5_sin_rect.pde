//3rd Week Assignment: 


int canvasWidth = 5100;
int canvasHeight = 3300;


void setup()
{
  HSBColor color1 = new HSBColor(203, random(80), random(100));
  HSBColor color2 = new HSBColor(203, random(80), random(100));
  HSBColor color3 = new HSBColor(203, random(80), random(100));
  HSBColor color4 = new HSBColor(203, random(80), random(100));


  size(canvasWidth, canvasHeight);
  colorMode(HSB, 360, 100, 100);

  // background - rect
  color3.display3(0, 0, canvasWidth, canvasHeight);

  //Ellipses
  smooth();
  noStroke();
  for (int y=0; y<=height; y +=95) {
    for (int x=0; x<=width; x +=95) {
      color2.display2(x, y, 95, 95);
    }
  }

  //Ellipse2
  color4.display4(855 , 760, 95, 95);


  save("grab.tif"); 
}

