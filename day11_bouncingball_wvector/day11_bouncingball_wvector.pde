// Example 5-6: Bouncing Ball
//int x = 0;
//int speedx = 2;
//int y = 120;
//int speedy = 2;

PVector position;
PVector velocity;

void setup() {
  size(480, 270);
  position = new PVector(0,120);
  velocity = new PVector(2,2);
}

void draw() {
  background(0);

  // Add the current speed to the x location.
  //x = x + speedx;
  // Add the current spped to the y location.
  //y = y + speedy;
  
  position.add(velocity);

  // Remember, || means "or."
  if ((position.x > width) || (position.x < 0)) {
    // If the object reaches either edge of x, multiply speed by -1 to turn it around.
    velocity.x = velocity.x * -1;
  }
  
  if ((position.y > height) || (position.y < 0)) {
    // If the object reaches either edge of y, multiply speed by -1 to turn it around.
    velocity.y = velocity.y * -1;
  }

  // Display circle at x,y location
  stroke(0);
  fill(255);
  ellipse(position.x,position.y,32,32);
}
