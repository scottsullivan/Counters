Counter counter1;
Counter counter2;

void setup() {
  size(300, 300);
  smooth();
  background(#FFFFFF);
  counter1 =new Counter(width/2, height/2);
  counter2 =new Counter(width/3, height/3);
}

void draw() {
  noStroke();
  fill(#FFFFFF);
  rect(0, 280, 300, 20);
  fill(250, 121, 78);
  counter1.advance();
  counter2.advance();
}


