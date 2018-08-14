//Class name.
class Ball {
  
  //Variables.
  float x = 0;
  float y = 0;
  float speedx;
  float speedy;
  float rad;
  
  //Constructor.
  Ball(float _x, float _y) {  //Differentiate input to the constructor from variables.
    x = _x;  //Not necessarily equal if storing in different format.
    y = _y;
    speedx = random(2,4);
    speedy = random(0.5,2);
    rad = 20;
  }
    
  //Methods: to compartmentalize actions.
  void run() {
    move();
    bounce();
    gravity();
    display();
  }
  
  void move() {
    x = x + speedx;
    y = y + speedy;
  }
  
  void bounce() {
    if((x > width - rad/2) || (x < rad/2)) {
      speedx = speedx * -1;
    }
    if((y > height - rad/2) || (y < rad/2)) {
      speedy = speedy * -1;
    }
  }
  
  void gravity() {
    speedy = speedy + 0.2;
  }
  
  void display() {
    //ellipse(200, 200, 20, 20);
    ellipse(x, y, rad, rad);  //Allow user of this class to specify instance position.
  }
}
