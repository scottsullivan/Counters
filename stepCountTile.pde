float angle = 0.0;
PImage img;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  stroke(250, 121, 78, 50);
  strokeWeight(angle);
  img = loadImage("300.jpeg");
  image(img, 0, 0);
}

void draw() {
  //background(#FFFFFF);
pushMatrix();
  strokeWeight(angle);
  translate(width / 2, height / 2);
  rotate(angle);
  line(angle/8, angle/8, angle, angle);
  angle = angle + 0.2;
  println(angle);
  popMatrix();

  if (angle > 100) {
    angle = 5;
    image(img, 0, 0);
  }
}

