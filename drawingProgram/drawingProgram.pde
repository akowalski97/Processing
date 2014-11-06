boolean mouseIsBeingDragged = false;
PImage img;
int colorWheelWidth;
int colorWheelHeight;
int wheelInset = 10;
int selectedColor = color(255, 0, 0);
int colorToReplace = color(255);

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
  fillPixels(mouseX, mouseY);
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

class Point {
  int x, y;

  Point(int x_, int y_) {
    x = x_; 
    y = y_;
  }
}

void fillPixels(int x, int y) {
  loadPixels();
  ArrayList<Point> pixelsToFill = new ArrayList<Point>();
  pixelsToFill.add(new Point(x, y));

  while (pixelsToFill.size () > 0) {
    Point point = pixelsToFill.get( 0);
    int pxlIndex = point.y * width + point.x;
    int pxl = pixels[pxlIndex];
    if (pxl != colorToReplace) {
      pixelsToFill.remove(point);
    }
    else {
      pixels[pxlIndex] = selectedColor;
      for (int dx = -1; dx < 2; ++dx) {
        for (int dy = -1; dy < 2; ++dy) {
          int x_ =point.x + dx;
          int y_ =point.y + dy;
          if (x_ >= 0 && x_ < width && y_>=0 && y_ < height) {
            if (x_ != 0 || y_ != 0) {
              int pxlToAddIndex = y_ * width + x_;
              int pxl_ = pixels[pxlToAddIndex];
              if (pxl_ != selectedColor) {
                pixelsToFill.add(new Point(x_, y_));
              }
            }
          }
        }
      }
    }
  }
  updatePixels();
}

