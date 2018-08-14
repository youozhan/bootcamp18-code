//Main program that invokes everything.
//Compartmentalized to call object and let it run itself.

Ball[] balls = new Ball[100];

void setup() {
  size(600, 600);
  smooth();
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(0, width/2), random(0, height/2));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < balls.length; i++) {
    balls[i].run();
  }
}
