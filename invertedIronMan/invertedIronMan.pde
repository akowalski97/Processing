PImage img;


void setup() {
  size(159, 316);
  img = loadImage("documents/IronMan.jpg");
}

void draw() {
  if (frameCount <= 400) {
    image(img, 0, 0);
    loadPixels();
    invertColors();
    updatePixels();
    println(frameCount);
    saveFrame("line-######.png");
  }
} 

void invertColors() {
  int i = 0;
  for (int pxl : pixels) {
    int pxlMultiplier = frameCount+1000;
    pixels[i++] = (pxl * (pxlMultiplier * -1/1000))+frameCount;
  }
}

