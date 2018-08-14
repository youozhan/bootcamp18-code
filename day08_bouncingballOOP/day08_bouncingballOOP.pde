//Main program that invokes everything.
//Compartmentalized to call object and let it run itself.

Ball ball1;  //Class name just like int or float followed by obj name.
Ball ball2;
Ball ball3;
Ball ball4;
Ball ball5;

void setup() {
  size(600, 600);
  smooth();
  //ball = new Ball();  //Build a new instance of the class.
  ball1 = new Ball(400, 400);
  ball2 = new Ball(30, 40);
  ball3 = new Ball(100, 200);
  ball4 = new Ball(10, 400);
  ball5 = new Ball(300, 300);
}

void draw() {
  background(0);
  ball1.run();  //Call class Ball to run itself.
  ball2.run();
  ball3.run();
  ball4.run();
  ball5.run();
}