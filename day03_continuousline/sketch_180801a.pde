void setup(){
  size(720,360);
  background(0);
}

void draw(){
  stroke(255);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
