class RSquare extends Shape {
  float angle; 
    
  void draw() {
     float x1 = cos(angle)* size + cX;
     float y1 = sin(angle)*size + cY;
     float x2 = cos(angle + (TWO_PI / 4)) * size + cX;
     float y2 = sin(angle + (TWO_PI / 4)) * size + cY;
     float x3 = cos(angle+ (TWO_PI / 2))* size + cX;
     float y3 = sin(angle+ (TWO_PI / 2))*size + cY;
     float x4 = cos(angle + 3*(TWO_PI / 4)) * size + cX;
     float y4 = sin(angle + 3*(TWO_PI / 4)) * size + cY;
     
     sline(x1, y1, x2, y2);
     sline(x2, y2, x3, y3);
     sline(x3, y3, x4, y4);
     sline(x4, y4, x1, y1);
     
     angle = angle + .1; 
  }
  
  void sdraw(int x,int y){
    cX = x;
    cY = y; 
    draw();
  }
 
}
