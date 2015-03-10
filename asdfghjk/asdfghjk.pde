void setup() {
  background(255);
  size(700, 700);
}

void draw() { 
  fill(255, 8);
  rect(0, 0, width, height);
  fill(#990000);
  stroke(#990000);
  translate(mouseX, mouseY);
  rotate(frameCount * 99999);
  ellipse(0, 0, 100, 100);
  line(0, 0, 100, 100);
  line(-100, -100, 0, 0);
  line(0, 0, 100, -100);
  line(0, 0, -100, 100);
  rotate(PI/4);
  line(0, 0, 100, 100);
  line(-100, -100, 0, 0);
  line(0, 0, 100, -100);
  line(0, 0, -100, 100);

}

