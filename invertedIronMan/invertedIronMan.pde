PImage img;


void setup() {
  size(159, 316);
  img = loadImage("documents/IronMan.jpg");
}

void draw() {
  image(img, 0, 0);
  loadPixels();
  invertColors();
  updatePixels();
  println(frameCount);
} 

void invertColors() {
  int i = 0;
  for (int pxl : pixels) {
    int pxlMultiplier = frameCount;
    pixels[i++] = (pxl * (pxlMultiplier * -1/1000))+frameCount;
  }
}

