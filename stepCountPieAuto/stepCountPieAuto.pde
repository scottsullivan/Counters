//float inCircle, outCircle, moreThan = 0.0;
//int inNo = 0;
//int outNo = 10;
//
//float deg = 0;

float diameter;
int[] angles = { 36, 36, 36, 36, 36, 36, 36, 36, 36, 36};
float lastAngle = 0;
int i = 0;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  frameRate(10);
  diameter = min(width, height) * 0.75;
  fill(#FF0000);
  noStroke();
}

void draw() {
  if (i < angles.length) {
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
    i++;
  }
}

