float inCircle = 0.0;
float outCircle = 5;
float rad = PI/4;
float deg = degrees(rad);


void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  stroke(250, 121, 78, 50);
  //frameRate(1);
}

void draw() {
  println(deg);
  
  strokeWeight(1);
  translate(width / 2, height / 2);
  rotate(deg/2);
  line(inCircle, inCircle, outCircle, outCircle);
  
  if (deg > 57) {
    inCircle = 6;
    outCircle = 11;
  }
  
  if (deg > 70) {
      inCircle = 12;
    outCircle = 17;
  }
  deg = deg + .1;
}

