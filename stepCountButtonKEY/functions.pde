void advance() {
  stroke(250, 121, 78); // color
  pushMatrix();
  translate(width/2, height/2);
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
}
