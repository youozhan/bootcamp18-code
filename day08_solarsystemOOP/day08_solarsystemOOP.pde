// Example 14-18: Object-oriented solar system

// An array of 8 planet objects
Planet[] planets = new Planet[4];

void setup() {
  size(480, 360);
  
  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++ ) {
    planets[i] = new Planet(64 + i*32,24);
  }
  
  background(0);
  noStroke();
}

void draw() {
  fill(0, 40);
  rect(0, 0, width, height);
  
  // Drawing the Sun
  pushMatrix();
  translate(width/2,height/2);
  stroke(0);
  fill(255);
  ellipse(0,0,64,64);
  
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
