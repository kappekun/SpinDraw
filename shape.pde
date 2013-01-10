abstract class Shape {
  int sizeChangeStep = 3;
  int size = 100; 
  int cX, cY;

  abstract void sdraw(int x1, int x2);
 
  void embiggen() {
    int fromEdge = findMax(cX, width-cX, cY, height-cY);
    size = (size + sizeChangeStep) % fromEdge; 
  }
  
  void emsmallen() {
    int fromEdge = findMax(cX, width-cX, cY, height-cY);
    size = (size - sizeChangeStep) % fromEdge; 
    if (size < 0) size = fromEdge - size;
  }

  private int findMax(int... vals) {
   int max = 0;
   for (int i : vals) {
      if (i > max) max = i;
   }
   return max;
  }
  
  void sline(float x1, float y1, float x2, float y2){
    line(x1, y1, x2, y2);
    x1 = width - x1;
    //y1 = height - y1;
    x2 = width - x2;
    //y2 = height - y2;
    line(x1, y1, x2, y2);  
  }
  
  void sellipse (int x,int y, float X, float Y) {
    ellipse(x, y, X, Y);
    ellipse(width-x, y, X, Y);
  }
  

}
