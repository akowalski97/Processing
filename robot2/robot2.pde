void setup() {
 size(800, 600);
}

void draw() {
  background(255);
  
//draw a grid to help me draw my robot
  translate(width/2, height/2);
  pushMatrix();
  drawGrid(-width/2, -height/2, 20, 100, 12);
  drawMouseCoordinates(-width/2, -height/2, 9);
  popMatrix();
  //draw body of robot
  float bodyWidth = 100;
  float bodyHeight = 200;
  float yTopOfBody = -bodyHeight/2;
  rect(-bodyWidth/2, yTopOfBody, bodyWidth, bodyHeight);
  
  //draw neck of robot
  
  
  
}
