class Arrow {
  float x = 0;
  float y = 0;
  float vx = 10;
  float vy = 0.1;
  boolean isReleased = false;

  void draw() {
    fill(255);
    noStroke();
    pushMatrix();
    translate(width/2+x, height/2-y);
    if (isReleased) {
      x = x+vx;
      y = y+vy;
    }
    rotate(PI/2+rotationAngle(mouseX-width/2, mouseY-height/2));

    //draw arrow shaft
    float shaftWidth = 10;
    float shaftHeight = 150;
    float xTipOfShaft = 0;
    float yTipOfShaft = -shaftHeight/2;
    rect(-shaftWidth/2, yTipOfShaft, shaftWidth, shaftHeight);

    //draw arrow head
    pushMatrix();
    fill(255);
    translate(xTipOfShaft, yTipOfShaft);
    stroke(255);
    triangle(-shaftWidth, 0, shaftWidth, 0, 0, -shaftWidth-15);
    popMatrix();

    //draw arrow tail
    fill(255, 0, 0);
    pushMatrix();
    translate(xTipOfShaft, yTipOfShaft+shaftHeight);
    stroke(255, 0, 0);
    triangle(-shaftWidth, 0, shaftWidth, 0, 0, -shaftWidth-15);
    popMatrix();
    fill(0);
    translate(xTipOfShaft, yTipOfShaft+shaftHeight);
    stroke(0);
    triangle(-shaftWidth/2, 0, shaftWidth/2, 0, 0, (-shaftWidth-15)/2);
    popMatrix();
  }


  float rotationAngle(float pointToX, float pointToY) {
    if (pointToX == 0) {
      return ( pointToY < 0 )? PI: -PI;
    }
    float rotationAngleInRadians = atan( pointToY / pointToX  ) ;
    if (pointToX < 0)
      rotationAngleInRadians += PI;
    return rotationAngleInRadians;
  }
}

