PImage img;

void setup() {
  size(591, 921);
  img = loadImage("documents/Batman_Arkham_Knight.png");
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

