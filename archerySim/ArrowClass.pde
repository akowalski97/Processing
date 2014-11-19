class Arrow {
  float x = 0;
  float y = 0;
  float vx = 10;
  float vy = 0.1;
  boolean isReleased = false;
  float angle;

  void draw() {
    fill(255);
    noStroke();
    pushMatrix();
    translate(width/2+x, height/2-y);
    if (isReleased) {
      x = x+vx;
      y = y+vy;
    }
    rotate(PI/2+rotationAngle( ));


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


  float rotationAngle() {
    if (isReleased)
      return (angle);
    float pointToX = mouseX-width/2;
    float pointToY = mouseY-height/2;
    if (pointToX == 0) {
      return ( pointToY < 0 )? PI: -PI;
    }
    float rotationAngleInRadians = atan( pointToY / pointToX  ) ;
    if (pointToX < 0)
      rotationAngleInRadians += PI;
    return rotationAngleInRadians;
  }
  void shoot() {
    angle = rotationAngle();
    arrow.isReleased = true;
    float pointToX = mouseX-width/2;
    float pointToY = mouseY-height/2;
    float distanceToMouse = dist(0, 0, pointToX, pointToY);
    float arrowSpeedMultiplier = 25;
    vx =  (pointToX/distanceToMouse) * arrowSpeedMultiplier;
    vy =  (-pointToY/distanceToMouse) * arrowSpeedMultiplier;
  }
}

