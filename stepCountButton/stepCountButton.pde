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
  frameRate(10);
    setupGUI();
}

void draw() {
  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  text((deg / 0.062831853), 0, 298);
}

void advance() {
  stroke(250, 121, 78);
  pushMatrix();
  println(deg);
  translate(width / 2, height / 2);
  rotate(deg);
  strokeWeight(1);
  line(inCircle, inCircle, outCircle, outCircle);
  popMatrix();

  if (deg > moreThan * 6.28318531) {
    inCircle = inNo + 10;
    outCircle = outNo + 10;

    inNo = inNo + 10;
    outNo = outNo + 10;
    moreThan++;
  }

  deg = deg + 0.062831853;
  redraw();
}

