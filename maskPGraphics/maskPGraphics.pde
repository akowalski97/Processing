PGraphics mask;
int WHITE = color(255);
int BLACK = color(0);

void setup() {
  size (480, 160);

  mask = createGraphics(width, height);
  mask.beginDraw();
  mask.background(0);
  mask.ellipse(width/2, height/2, 100, 100);
  mask.endDraw();
  mask.loadPixels();
}

void maskPixels() {
  loadPixels();
  for (int i = 0; i < mask.pixels.length; ++i) {
    if (mask.pixels[i] != WHITE)
      pixels[i] = BLACK;
  }
  updatePixels();
}

void draw() {
  background(255, 255, 100);
  noStroke();
  fill(255, 0, 0);
  float diameter = height * 0.8;
  ellipse(mouseX, mouseY, diameter, diameter);
  maskPixels();
}

