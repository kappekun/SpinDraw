void setup() {
  //size(800, 800);
  size(1440, 900);
  stroke(255);
  strokeWeight(2);
  randomizeBackground();
} 

Boolean changeColor = false;
Boolean changeShape = false;
int changeSize = 0;

Shape s = new RSquare();
Shape t = new RTri();

Shape[] ss = {new RSquare(),
              new RTri(),
              new Circ() 
             };
int si;

void nextShape() {
    si = (si + 1) % ss.length;
}

void draw() {
  if (keyPressed == true){
    if (key == ' '){
      randomizeBackground();
    } 
  }
  if (changeColor) {
    randomizeColor(); 
  }
  if (changeShape) {
     nextShape();
  }

  
  if (mousePressed == true){
    ss[si].sdraw(mouseX, mouseY); 
    
    if(changeSize == 1) {
      ss[si].embiggen(); 
    } else if (changeSize == -1) {
      ss[si].emsmallen(); 
    }
  }
}

void keyPressed() {
  if (key == 's') {
    nextShape();
  } else if (key == 'S') {
    changeShape = ! changeShape;
 
  } else if (key == 'c') {
    randomizeColor();
  } else if (key == 'C') {
    changeColor = ! changeColor;
  }

  else if (key == '-') {
    changeSize = -1;
  } else if (key == '0') {
    changeSize = 0;
  } else if (key == '=') {
    changeSize = 1; 
  }
  
  else if (key == CODED) {
    
    if (keyCode == UP) {
      ss[si].embiggen();
    } else if (keyCode == DOWN) {
      ss[si].emsmallen(); 
    } 
  }
}

void randomizeBackground() {
  background(random(0,255), random(0,255), random(0,255)); 
}

void randomizeColor() {
  float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);
  stroke(r,g,b);
  fill(r,g,b);
}
