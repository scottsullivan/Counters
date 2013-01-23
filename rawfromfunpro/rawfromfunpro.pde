Counter counter1;
Counter counter2;
 
void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  counter1 = new Counter(width/2, height/2, 'e');
  counter2 = new Counter(width/3, height/3, 'r');
}
 
void draw() {
  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  counter1.advance();
  counter2.advance();
}
 
// NEW: when a key is pressed, we tell all our objects which key was
// pressed. The objects will compare that key with the key we told them
// when we created the objects ('e' in one case, 'r' in the other case)
void keyPressed() {
  counter1.testKey(key);
  counter2.testKey(key);
}
 
// ----- your custom object
 
class Counter {
  float inCircle = 0;
  float outCircle = 10;
  float moreThan = 1;
  int inNo = 0;
  int outNo = 10;
  float deg = 0.06283185307179587;
  int X;
  int Y;
  // NEW: Press is now type 'char', not 'key'
  // 'key' is a reserved word in Processing
  char Press;
 
  // NEW: here again you use 'char', which is like a
  // one character long string.
  Counter(int tempX, int tempY, char tempPress) {
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
 
  // NEW: here you can't have keyPressed() and expect it to be called.
  // Processing automatically calls the keyPressed() function present
  // in your main program, but not in your custom objects.
  // Instead, I renamed it testKey(), and call this function from
  // keyPressed() in the main program.
  void testKey(char k) {
    if (k == Press) {
      advance();
    }
  }
}
