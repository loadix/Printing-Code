/*Mónica Bate
Midterm Project: Logo
This code draws the logo of the Invisible Exchange project which aim is to search for bacteria samples
in different kinds of currencies (paper money).
The logo was thought to be very organic and simple and also generative. Each time you run the code,
it will display new colors and sizes within certain constraints.
*/

PFont font;
float textoHeight = 200;
PGraphics canvas;
int canvasWidth = 5100;
int canvasHeight = 3000;

void setup()
{  
  font = loadFont("AppleGothic-100.vlw");
  size(canvasWidth, canvasHeight);
  canvas = createGraphics(canvasWidth, canvasHeight);
  canvas.beginDraw();
  canvas.smooth();
  canvas.background(255);

  canvas.translate(width / 6, height / 2);


  int circleRadius = 150;
  float numVertices = 20; //36
  float vertexDegree = 360 / numVertices;



  //Text
  canvas.scale(3);
  canvas.textFont(font);
  canvas.fill(0, 50);
  canvas.text("nvisible", width/40, textoHeight);
  canvas.fill(0, 80);
  canvas.text("X", width/11.3, textoHeight);
  canvas.fill(0, 50);
  canvas.text("change", width/9.8, textoHeight);



  //scale(0.8);
  //////////////////////////////relleno
  canvas.fill(random(200), random(200), 193, 80);
  canvas.noStroke();

  canvas.beginShape();

  for (int i = 0; i < numVertices; i++)
  {    
    float x = cos(radians(i * vertexDegree)) * circleRadius/2  + (30 * noise(i));
    float y =  sin(radians(i * vertexDegree)) * circleRadius*2  + (30 * noise(i));
    canvas.curveVertex(x, y);
  }
  canvas.endShape();


  /////////////////////////////////relleno2
  canvas.fill(random(200), random(200), 193, 80);
  canvas.scale(random(1.1, 1.2));

  canvas.beginShape();

  for (int i = 0; i < numVertices; i++)
  {    
    float x = cos(radians(i * vertexDegree)) * circleRadius/2  + (30 * noise(i));
    float y = sin(radians(i * vertexDegree)) * circleRadius*2  + (30 * noise(i));
    canvas.curveVertex(x, y);
  }
  canvas.endShape();


  //////////////////////////////////relleno3
  canvas.fill(random(200), random(200), 193, 40);
  canvas.scale(random(0.3, 0.7));

  canvas.beginShape();

  for (int i = 0; i < numVertices; i++)
  {    
    float x = cos(radians(i * vertexDegree)) * circleRadius/2  + (30 * noise(i));
    float y = sin(radians(i * vertexDegree)) * circleRadius*2  + (30 * noise(i));
    canvas.curveVertex(x, y);
  }
  canvas.endShape();

  canvas.endDraw();
  image(canvas, 0, 0, canvas.width * 0.1, canvas.height * 0.1);
  save("bacteria.tif");
}

