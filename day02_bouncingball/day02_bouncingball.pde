// Example 5-6: Bouncing Ball
int x = 0;
int speedx = 2;
int y = 120;
int speedy = 2;

void setup() {
  size(480, 270);
}

void draw() {
  background(0);

  // Add the current speed to the x location.
  x = x + speedx;
  // Add the current spped to the y location.
  y = y + speedy;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge of x, multiply speed by -1 to turn it around.
    speedx = speedx * -1;
  }
  
  if ((y > height) || (y < 0)) {
    // If the object reaches either edge of y, multiply speed by -1 to turn it around.
    speedy = speedy * -1;
  }

  // Display circle at x,y location
  stroke(0);
  fill(255);
  ellipse(x,y,32,32);
}
