boolean mouseIsBeingDragged = false;
PImage img;
int colorWheelWidth;
int colorWheelHeight;
int selectedColor = color(255);
int wheelInset = 10;

void setup() {
  img = loadImage("color_wheel_730.png");
  size (1000, 1000);
  background(255);
  colorWheelWidth = width/5;
  colorWheelHeight = height/5;
}

void draw () {
  image(img, wheelInset, wheelInset, colorWheelWidth, colorWheelHeight);
  if (mouseIsBeingDragged) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  loadPixels();
  int pxl = pixels[width * mouseY + mouseX];
  println("red="+red(pxl)+ "+ green="+ green(pxl)+ "+ blue"+ blue(pxl));
}

void mouseClicked() {
  if (mouseInColorWheel() ) {
    loadPixels();
    selectedColor = pixels[width * mouseY + mouseX];
  }
  fill(selectedColor);
  float radiusColorSwatch = 15;
  float diameterColorSwatch = radiusColorSwatch * 2;
  ellipse(radiusColorSwatch, radiusColorSwatch, diameterColorSwatch, diameterColorSwatch);
}

boolean mouseInColorWheel() {
  return (mouseX < wheelInset + colorWheelWidth && mouseY < wheelInset + colorWheelHeight);
}
  void mouseDragged() {
    mouseIsBeingDragged = true;
  }

  void mouseMoved() {
    mouseIsBeingDragged = false;
  }

