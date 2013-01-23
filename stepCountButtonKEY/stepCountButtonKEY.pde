float inCircle = 0;
float outCircle = 10; 
float moreThan = 1;
int inNo = 0;
int outNo = 10;
float deg = 0.06283185307179587;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
}

void draw() {

  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  text(((deg - 0.06283185307179587) / 0.06283185307179587), 0, 298);
}
void keyPressed() {
  if (key == 'c') { 
    advance();
  }
}

