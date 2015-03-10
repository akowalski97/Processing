float x;
float y;
float easing = 0.05;

void setup() {
  background(#000000);
  size(700, 700);
}

void draw() { 

  noStroke();

  float targetX = mouseX;
  float dx = targetX - x;
  if (abs(dx) > 1) {
    x += dx * easing;
  }

  float targetY = mouseY;
  float dy = targetY - y;
  if (abs(dy) > 1) {
    y += dy * easing;
  }
//sun
  fill(#ff9900);
  ellipse(x, y, 50, 50);
//planet 4
  translate(x, y);
  rotate(frameCount * 0.009);
  fill(#99ffbb);
  ellipse(115, 115, 70, 70);
//planet 1
  rotate(frameCount * 0.007);
  fill(#ff1111);
  ellipse(45, 45, 30, 30);
//planet 2
  rotate(frameCount * 0.022);
  fill(#33bb88);
  ellipse(70, -65, 25, 25);
//planet 3
  rotate(frameCount * 0.03);
  fill(#666666);
  ellipse(25, 25, 10, 10);
  
  fill(#000000, 10);
  rect(0, 0, width, height);
  fill(0);
}

