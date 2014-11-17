class Bow {
  float x = 0;
  float y = 0;

  void draw() {
    //draw bow
    pushMatrix();
    translate(width/2, height/2);
    rotate(PI/-2+rotationAngle(mouseX-width/2, mouseY-height/2));
    noFill();
    stroke(255);
    arc(0, 0, 200, 150, 0, PI, OPEN);
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

