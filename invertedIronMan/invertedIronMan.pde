PImage img;

void setup() {
  size(159, 316);
  img = loadImage("documents/IronMan.jpg");
  image(img, 0, 0);
  loadPixels();
  int pixel = pixels[0];
  invertColors();
  updatePixels();
}

void invertColors() {
  int i = 0;
  for (int pxl : pixels) {
    pixels[i++] = pxl * -1;
  }
}

