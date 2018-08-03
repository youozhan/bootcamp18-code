// DAY 4: FUNCTIONS
// Draw circles with a radius mapped to the width the of the canvas

// global variables
float radius;

void setup(){
  size(600,600);
  background(0);
}

void draw(){
 if(mousePressed){
   //map(value, start1, stop1, start1, start2)
   radius = map(mouseX, 0, width, 15, 250);
   
   noStroke();
   ellipse(mouseX, mouseY, radius, radius);
   println(radius);
 }
}
