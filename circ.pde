class Circ extends Shape {  
  void sdraw(int x, int y, int px, int py){
    float speed = 3*(abs(x-px) + abs(y-py));
    stroke(speed);
    sellipse(x, y, speed, speed);
    stroke(4);
  }
  
  void sdraw(int x, int y) {
    sdraw(mouseX,mouseY,pmouseX, pmouseY); 
  }
}
