void setup() {
  background(#AAAAAA);
  size(700, 700);
}


void draw() {
  fill(255, 10);
  rect(0, 0, width, height);
  fill(0);
  noStroke();
  translate(width/2, height/2);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.051)*height*0.4, 50, 50);
  ellipse(-cos(frameCount*.05)*width*0.4, -cos(frameCount*.051)*height*0.4, 50, 50);  
  ellipse(cos(frameCount*.051)*width*0.3, cos(frameCount*.05)*height*0.3, 40, 40);
  ellipse(-cos(frameCount*.051)*width*0.3, -cos(frameCount*.05)*height*0.3, 40, 40);  
  ellipse(cos(frameCount*.05)*width*0.2, cos(frameCount*.051)*height*0.2, 30, 30);
  ellipse(-cos(frameCount*.05)*width*0.2, -cos(frameCount*.051)*height*0.2, 30, 30);  
  ellipse(cos(frameCount*.051)*width*0.1, cos(frameCount*.05)*height*0.1, 20, 20);
  ellipse(-cos(frameCount*.051)*width*0.1, -cos(frameCount*.05)*height*0.1, 20, 20);  
}
