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
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.052)*height*0.4, 50, 50);  
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.053)*height*0.4, 50, 50);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.054)*height*0.4, 50, 50);  
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.055)*height*0.4, 50, 50);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.056)*height*0.4, 50, 50);  
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.057)*height*0.4, 50, 50);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.058)*height*0.4, 50, 50);  
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.059)*height*0.4, 50, 50);
  ellipse(cos(frameCount*.05)*width*0.4, cos(frameCount*.06)*height*0.4, 50, 50); 

}
