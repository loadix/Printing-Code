 class Curva{
  PVector anchorPoint;  
  Vertex v1, v2, v3;
  int x, y;
  
  Curva(){
    anchorPoint = new PVector();
    anchorPoint.x = 90;
    anchorPoint.y = 690;
    
    v1 = new Vertex();
    v2 = new Vertex();
    resetVertexes();
    
    
    x = (int)random(10);
    y = (int)random(10);
    
  }
  
  void draw(){
        smooth();
    pushMatrix();
    noFill();
    translate(x, y);
    beginShape();
        smooth();
    vertex(anchorPoint.x, anchorPoint.y);
    v1.draw();
    v2.draw();
    endShape();
    popMatrix();
  }
  
  void variate(int verticeACambiar){
    resetVertexes();
    int deltaX = (int)random(-30,30);
    int deltaY = (int)random(-30, 30);
    
    Vertex vertex =  new Vertex();
    if(verticeACambiar == 1){
      vertex = v1;
    }
    else if(verticeACambiar == 2){
      vertex = v2;
    }
    
    vertex.anchor.x += deltaX;
    vertex.anchor.y += deltaY;
    
    x = (int)random(0, width/6);
    y = (int)random(0, height/6);
  
  }
  
  void resetVertexes(){
    v1.control1.x = 71;
    v1.control1.y = 297;
    v1.control2.x = 220;
    v1.control2.y = 29;
    v1.anchor.x = 450;
    v1.anchor.y = 140;
    
    
    v2.control1.x = 590;
    v2.control1.y = 206;
    v2.control2.x = 536;
    v2.control2.y = 379;
    v2.anchor.x = 420;
    v2.anchor.y = 300;
  }
  
}
