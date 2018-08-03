// DAY 4: FUNCTIONS
// Create a function that draws a circle
// Create a function that moves the circle
// Create a function that changes the size of the circle

// Global variables
float xPos;
float yPos;
float speed;
float radius;
float size;

void setup(){
  size(600, 600);
  xPos = 100;
  yPos = 100;
  radius = 20;
  speed = 4;
}

void draw(){
  background(255);
  fill(0);
  //ellipse(xPos, yPos, radius, radius);
  
  // Now we want multiple circles, so let's create a function
  drawCircle(100, radius);
  drawCircle(300, radius);
  drawCircle(500, size);
  
  // Now we want the circles to bounce
  moveCircle();
  
  // Map the circle's radius to the mouse coordinates
  size = changeSize(mouseX/8, mouseY/16);
}

//-------------------------------------
// USER-DEFINED FUNCTIONS

// DRAW A BLACK CIRCLE AT FIXED Y POS
void drawCircle(float x, float r){
   fill(0);
   ellipse(x, yPos, r, r);
}

// MOVE CIRCLE ALONG Y AXIS
void moveCircle(){
   yPos += speed;
   if(yPos < 0 || yPos > height){
     speed *= -1;
   }
}

//CHANGE SIZE
float changeSize(float x1, float y1){
  float s = x1 + y1;
  return s;
}
