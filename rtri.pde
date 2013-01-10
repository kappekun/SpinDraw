class RTri extends Shape {
  float angle; 
    
  void draw() {
     float x1 = cos(angle)* size + cX;
     float y1 = sin(angle)*size + cY;
     float x2 = cos(angle + (TWO_PI / 3)) * size + cX;
     float y2 = sin(angle + (TWO_PI / 3)) * size + cY;
     float x3 = cos(angle+ 2*(TWO_PI / 3))* size + cX;
     float y3 = sin(angle+ 2*(TWO_PI / 3))*size + cY;
     
     sline(x1, y1, x2, y2);
     sline(x2, y2, x3, y3);
     sline(x3, y3, x1, y1);
     
     angle = angle + .1; 
  }
  
  void sdraw(int x,int y){
    cX = x;
    cY = y; 
    draw();
  }
}
