int pos;

void setup() {
  frameRate(5);
  size(640, 320);
  background(0);
  pos=50;
}

void draw() {

  ////First way:
  //ellipse(50, height/2, 50, 50);
  //ellipse(100, height/2, 50, 50);
  //ellipse(150, height/2, 50, 50);
  //ellipse(200, height/2, 50, 50);
  //ellipse(250, height/2, 50, 50);
  //ellipse(300, height/2, 50, 50);
  //ellipse(350, height/2, 50, 50);
  //ellipse(400, height/2, 50, 50);
  //ellipse(450, height/2, 50, 50);


  ////Second way:
  //for (int i =0; i<width; i++) {
  //  ellipse(pos,height/2,50,50);
  //  pos=pos+50;
  //}


  ////3rd example:
  //for (int x = 0; x<= width; x+=20) {
  //  for (int y=0; y<= height; y+=20) {
  //    noStroke();
  //    fill( int (random(100, 230)), int (random (255)), int (random(150, 255)), 150);
  //    ellipse (x, y, 40, 40);
  //  }
  //}
}