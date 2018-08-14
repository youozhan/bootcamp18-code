int num = 70;
int[] x = new int[num];
int[] y = new int[num];
int col;
void setup() { 
  size(640, 320);
  noStroke();
}

void draw() {
  background(0);


  fill(255, 102);


  for (int i = 0; i < num-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  // Add the new values to the beginning of the array
  x[num-1] = mouseX;
  y[num-1] = mouseY;
  
  // Draw the circles
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/2.0, i/2.0);
    //println(x[1],x[25],x[50]);
    //logic: x[0] gets drawn much later than x[50] because value passed from x[50] to x[0]
  }

}