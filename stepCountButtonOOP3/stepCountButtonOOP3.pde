Counter counter1;
Counter counter2;
Counter counter3;
 
void setup() {
  size(screen.width, screen.height);
  smooth();
  background(#FFFFFF);
  counter1 = new Counter(500, 300, 'e');
  counter2 = new Counter(700, 600, 'r');
  counter3 = new Counter(1000, 250, 't');
}

void draw(){}

void keyPressed() {
  switch(key) {
    case 'e':
     counter1.advance();
     break;
    case 'r':
      counter2.advance();
      break;
    case 't':
      counter3.advance();  
      break;
  }
  //counter1.testKey(key);
  //counter2.testKey(key);
  //counter3.testKey(key);
}
