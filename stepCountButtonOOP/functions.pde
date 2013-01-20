void advance() {
  stroke(250, 121, 78); // color
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(deg);
  strokeWeight(1);
  line(inCircle, inCircle, outCircle, outCircle);
  popMatrix();

  if (deg > moreThan * 6.28318531) {
    inCircle = inNo + 10;
    outCircle = outNo + 10;

    inNo = inNo + 10;
    outNo = outNo + 10;
    moreThan++;
  }

  deg = deg + 0.062831853;
  redraw();
}
