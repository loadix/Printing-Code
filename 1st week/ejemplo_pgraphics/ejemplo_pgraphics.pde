PGraphics canvas;
void draw()
{
  size(500, 500);
  canvas = createGraphics(2550, 3300, P2D);
  canvas.beginDraw(); 
  canvas.rect(0, 0, 50, 50);
  canvas.endDraw();
  image(canvas, 0, 0, canvas.width * 0.2, canvas.height * 0.2);
  canvas.save("grab.png");
  //adding test comment
}
