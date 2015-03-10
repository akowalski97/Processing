void setup() {
  background(255);
  size(700, 700);
}


void draw() {
  fill(255, 2);
  rect(0, 0, width, height);
  fill(0);
  noStroke();
  translate(width/2, height/2);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.051)*height*0.4, 50, 50);
  fill(#3355dd);
  ellipse(cos(frameCount*.05)*width*0.3, cos(frameCount*.052)*height*0.3, 50, 50);
  fill(#661155);
  ellipse(cos(frameCount*.05)*width*0.2, cos(frameCount*.053)*height*0.2, 50, 50);
  fill(#ff3300);
  ellipse(cos(frameCount*.052)*width*0.4, cos(frameCount*.05)*height*0.4, 50, 50);
  fill(#ff8800);
  ellipse(cos(frameCount*.054)*width*0.3, cos(frameCount*.05)*height*0.3, 50, 50);
  fill(#33ff22);
  ellipse(cos(frameCount*.056)*width*0.2, cos(frameCount*.05)*height*0.2, 50, 50);
}


