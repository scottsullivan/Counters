int diameter = 20;
int angles = 1;
float lastAngle = 0;
int i, moreThan = 0;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  frameRate(10);
  fill(#FF0000);
  noStroke();
}

void draw() {
  if (i < angles) {
    fill(#FF0000);
    arc(width/2, height/2, diameter, diameter, lastAngle, (lastAngle + 0.062831853));
    lastAngle +=  0.062831853;
    i++;
    angles++;
  }
  if (lastAngle > moreThan * 6.28318531) {
    moreThan++;
    diameter = diameter + 20;
    fill(#000000);
    ellipse(width/2, height/2, (diameter - 20), (diameter - 20));
  }

  //diameter = 10;

  drawNumbers();
}

void drawNumbers() {
  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  text((lastAngle * 6.28318531), 0, 298);
}

