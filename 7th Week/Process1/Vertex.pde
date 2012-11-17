class Vertex{
  PVector control1;
  PVector control2;
  PVector anchor;
  
  
  Vertex(){
    control1 = new PVector();
    control2 = new PVector();
    anchor = new PVector();    
  }
  
  void draw(){
    bezierVertex(control1.x, control1.y, control2.x, control2.y, anchor.x, anchor.y);    
  }

}
