void setup() {
 size(640, 480);
}

void draw() {
 background(255,255,180);
 
 float x = mouseX;
 float y = mouseY;
 float xDiameter = 80;
 float yDiameter = 40;
 
 fill(180, 180, 255);
 noStroke();
 ellipse(x, y, xDiameter, yDiameter);
}

