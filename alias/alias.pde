int blockSidePixels = 40;
int WHITE = color(255);
int BLACK = color(0);


void setup() {
  size(600, 600);
}

void draw() {

  blockSidePixels = mouseX;
  if (blockSidePixels < 1) {
    blockSidePixels = 1;
  }
  background(255); 
  strokeWeight(width*.1);
  ellipse(width/2, height/2, .8*width, .8*width);
  alias();
}

void alias() {
  for (int yStartBlock = 0; yStartBlock < height; yStartBlock += blockSidePixels) {
    for (int xStartBlock = 0; xStartBlock < width; xStartBlock += blockSidePixels) {
      float whiteFraction = frationOfWhite(yStartBlock, xStartBlock);
      if (whiteFraction < 0.5) {
        setBlockColor(xStartBlock, yStartBlock, BLACK);
      } else {
        setBlockColor(xStartBlock, yStartBlock, WHITE);
      };
    }
  }
}
float frationOfWhite(int xStartBlock, int yStartBlock) {
  int numberOfWhitePixels = 0;
  for (int y = yStartBlock; y < yStartBlock + blockSidePixels; ++y) {
    for (int x = xStartBlock; x < xStartBlock + blockSidePixels; ++x) {
      int clr = get(x, y);
      int grayLevel = (int)(red(clr)+green(clr)+blue(clr))/3;
      if (grayLevel > 127) ++numberOfWhitePixels;
    }
  }
  return (((float) numberOfWhitePixels)/(blockSidePixels * blockSidePixels));
}
void setBlockColor(int xStartBlock, int yStartBlock, int clr) {
  for (int y = yStartBlock; y < yStartBlock + blockSidePixels; ++y) {
    for (int x = xStartBlock; x < xStartBlock + blockSidePixels; ++x) {
      set (x, y, clr);
    }
  }
}

