import controlP5.*;
ControlP5 controlP5;

float inCircle, moreThan = 0.0;
float outCircle = 10; 
int inNo = 0;
int outNo = 10;

float deg = 0;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  setupGUI();
}

void draw() {
  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  text((deg / 0.062831853), 0, 298);
}



