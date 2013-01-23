class Counter {
  float inCircle = 0;
  float outCircle = 10; 
  float moreThan = 1;
  int inNo = 0;
  int outNo = 10;
  float deg = 0.06283185307179587;
  int X;
  int Y;
  key Press;

  Counter(int tempX, int tempY, key == tempPress) {
    X = tempX;
    Y = tempY;
    Press = tempPress;
  }

  void advance() {
    stroke(250, 121, 78); // color
    pushMatrix();
    translate(X, Y);
    rotate(deg);
    strokeWeight(1);
    line(inCircle, inCircle, outCircle, outCircle);
    popMatrix();

    if (deg >= moreThan * 6.283185307179587) {
      inCircle = inNo+10;
      outCircle = outNo+10;

      inNo += 10;
      outNo += 10;
      moreThan++;
    }

    deg = deg + 0.06283185307179587;
    text(((deg - 0.06283185307179587) / 0.06283185307179587), 0, 298);
  }

  void keyPressed() {
    if (value == Press) { 
      advance();
    }
  }
}

