boolean mouseIsBeingDragged = false;
PImage img;

void setup() {
  img = loadImage("documents/color_wheel_730.png");
  size (1000, 1000);
  background(255);
}

void draw () {
  image(img, 10, 10, width/5, height/5);
  if (mouseIsBeingDragged) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  loadPixels();
  int pxl = pixels[width * mouseY + mouseX];
  println("red="+red(pxl)+ "+ green="+ green(pxl)+ "+ blue"+ blue(pxl));
}

void mouseDragged() {
  mouseIsBeingDragged = true;
}

void mouseMoved() {
  mouseIsBeingDragged = false;
}

