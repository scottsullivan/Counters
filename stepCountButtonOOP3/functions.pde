class Counter {
  float inCircle = 10;
  float outCircle = 20;
  float moreThan = 1;
  int inNo = 10;
  int outNo = 20;
  float deg = 0.06283185307179587;
  int X;
  int Y;
  char Press;

  Counter(int tempX, int tempY, char tempPress) {
    X = tempX;
    Y = tempY;
    Press = tempPress;
  }

  void advance() {
    stroke(250, 121, 78); 
    pushMatrix();
    translate(X, Y);
    rotate(deg);
    strokeWeight(1);
    line(inCircle, inCircle, outCircle, outCircle);
    popMatrix();

    if (deg >= moreThan * TWO_PI) {
      inCircle = inNo+10;
      outCircle = outNo+10;
      inNo += 10;
      outNo += 10;
      moreThan++;
    }
    
    noStroke();
    fill(#FFFFFF);
    ellipse(X, Y, 30, 30);
    deg = deg + 0.06283185307179587;
    fill(250, 121, 78);
    int degInt = round(((deg - 0.06283185307179587) / 0.06283185307179587));
    textAlign(CENTER);
    text(degInt, X, Y + 5);
  }

  void testKey(char k) {
    if (k == Press) {
      advance();
    }
  }
 
}
