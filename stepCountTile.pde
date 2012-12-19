float inCircle, outCircle, moreThan = 0.0;
int inNo = 0;
int outNo = 10;

float deg = 0;


void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  frameRate(10);
}

void draw() {
  stroke(250, 121, 78, 50);
  pushMatrix();
  println(deg);
  translate(width / 2, height / 2);
  rotate(deg);
  strokeWeight(1);
  line(inCircle, inCircle, outCircle, outCircle);
  popMatrix();

  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  text((deg / 0.0174532925), 0, 298);

  if (deg > moreThan * 6.28318531) {
    inCircle = inNo + 10;
    outCircle = outNo + 10;

    inNo = inNo + 10;
    outNo = outNo + 10;
    moreThan++;
  }

  deg = deg + 0.0174532925;
}

