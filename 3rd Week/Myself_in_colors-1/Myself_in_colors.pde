int canvasWidth = 5100;
int canvasHeight = 3300;
int rectWidth = 600;
int rectHeight = 600;

//for printing
PGraphics canvas;
//for printing

void setup() {
  colorMode(HSB, 360, 100, 100);


  size(canvasWidth, canvasHeight);

  //for printing
  canvas=createGraphics(canvasWidth, canvasHeight);
  canvas.beginDraw();
  //for printing

  HSBColor color1 = new HSBColor(0, random(100), random(100));
  HSBColor color2 = new HSBColor(0, random(100), random(100));


  canvas.background(0);


  //Square
  canvas.smooth();
  canvas.fill(200);
  // canvas.rectMode(RADIUS);
  canvas.rectMode(CENTER);
  canvas.rect(canvasWidth/2, canvasHeight/2, 200, 200);

  //Ellipses
  //smooth();
  canvas.fill(255, 140);
  //fill(color1);
  canvas.noStroke(); //fil cambiado de lugar **
  canvas.ellipseMode(RADIUS);
  for (int y=0; y<=height; y +=40) {
    for (int x=0; x<=width; x +=40) {
      //acá estaba el fill**
      canvas. ellipse(x, y, 40, 40);
    }
  }

  //for printing
  canvas.endDraw();
  image(canvas, 0, 0, canvas.width*0.217, canvas.height * 0.217);
  canvas.save("grab.tif");
  //for printing
}

