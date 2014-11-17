void setup () {
  size (640, 480);
  background(0);
}
void draw () {
  float diameter = sqrt(mouseX/3 * mouseY/3);
  fill(255);
  ellipse(pmouseX, pmouseY, diameter, diameter);
  noStroke();
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
}
