// Example 4-3: Varying variables

// Declare and initialize two integer variables at the top of the code.
int circleX = 0;
int circleY = 100;

void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);
  fill(0);
  // Use the variables to specify the location of an ellipse.
  ellipse(circleX, circleY, 50, 50);

  // An assignment operation that increments the value of circleX by 1.
  circleX = circleX + 1;
}
