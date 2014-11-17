Arrow arrow;
Bow bow;

void setup() {
  background (0);
  size (2000, 680);
  arrow = new Arrow();
  bow = new Bow();
}

void draw() {
  bow.draw();
  arrow.draw();
  noStroke();
  fill(0, 0, 0, 100);
  rect(0, 0, width, height);
}

void mousePressed() {
  if (!arrow.isReleased) {
    arrow.isReleased = true;
  } 
  else {
    arrow.isReleased = false;
  }
}
