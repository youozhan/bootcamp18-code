Shape[] shapes = new Shape[30];

void setup(){
  size(480,270);
  
  for (int i = 0; i<shapes.length; i++){
    int r = int(random(2));
    if (r==0){
      shapes[i] = new Circle(320,180,32,color(random(255),100));
    } else {
      shapes[i] = new Square(320,180,32);
    }
  }
}

void draw(){
  background(255);
  for (int i =0; i<shapes.length; i++){
    shapes[i].jiggle();
    shapes[i].display();
  }
}
