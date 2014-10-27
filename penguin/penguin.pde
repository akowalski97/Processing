PImage img, img2, img3, img4;

void setup() {
  size(518, 388);
  img = loadImage("documents/penguin.jpg");
  img2 = loadImage("documents/penguin.jpg");
  img3 = loadImage("documents/penguin.jpg");
  img4 = loadImage("documents/penguin.jpg");
  img.filter(POSTERIZE, 20);
  img2.filter(POSTERIZE, 15);
  img3.filter(POSTERIZE, 10);
  img4.filter(POSTERIZE, 5);
}

void draw() {
  image(img, 0, 0);
  image(img2, width/2, 0);
  image(img3, 0, height/2);
  image(img4, width/2, height/2);
}
