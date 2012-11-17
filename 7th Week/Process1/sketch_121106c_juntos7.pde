ArrayList  <Ball> balls;
ArrayList <Curva>curvas;
int numCurvas;

color[]ballColors; //dos


int canvasWidth = 800;//3000;
int canvasHeight = 800;//5100;

PGraphics canvas;

void setup()
{
  size(canvasWidth, canvasHeight);

smooth();
colorMode(HSB, 360, 100, 100);//dos
background(0, 0, 100); //this background is to start with white, otherwise it would be great (Processing default backgr color)
scale(0.2);

noFill();

  // stroke(0, 0, 0);
  // strokeWeight(2);


  //colores
  ballColors = new color[4]; //dos
  ballColors[0] = color(219, 0, 0, 20);//dos
  ballColors[1] = color(10, 90, 86, 20);//dos
  ballColors[2] = color(205, 90, 89, 20);//dos
  ballColors[3] = color(129, 84, 59, 20);//dos

  balls = new ArrayList(); //dos

  curvas = new ArrayList();
  numCurvas = 20;
  for (int i = 0; i < numCurvas; i++) {   
  curvas.add(new Curva());
  }
}

void draw() {
  for (int i = 0; i < numCurvas; i++) {
    Curva curva = (Curva)curvas.get(i);//Casting: the Arraylist doesn't know that it has curves inside it.
    curva.draw();

    //balls
    int[] ballColors = {//dos
      20, 60, 90, 100//dos
    };//dos
    for (int g = 0; g < balls.size(); g++) {//dos
      balls.get(g).display();//dos
    }//dos
  }
}

void keyPressed() {
  if (key == ' ') {
    background(0, 0, 100);//dos, it was 100
    deformCurves(); //change curve's shape
  }
  else if (key == 'p') {
    save("grab4i.tif");
  }
}

void mousePressed()//dos
{//dos
  Ball ball = new Ball(mouseX, mouseY, 20, ballColors[int(random(0, 4))]);//dos
  balls.add(ball);//dos
}//dos


//function to change curve's shapes
void deformCurves() {
  for (int i = 0; i < numCurvas; i++) {
    Curva curva = (Curva)curvas.get(i);
    curva.variate((int)random(1, 2));
  }
}

