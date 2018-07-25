//Paolo PV

int imageIndex = 0;
float xPosition = 100;

// Delare two arrays of PImage respectively
// Face left
PImage[] images1 = new PImage[10];
// Face Right
PImage[] images2 = new PImage[10];

void setup(){
  size(480,360);
  
  // Use for loop to load array of Images
  for ( int i = 0; i< 10; i++ ){
  images1[i] = loadImage(i+".png");
  images2[i] = loadImage("f"+i+".png");
 }
 
 // Speed
 frameRate(10);
}

void draw(){
  noStroke();
  rect(0, 0, width, height);

  imageMode(CENTER);
  //scale(0.5);
    
  // Render images in both directions in 1/2 size
  image(images1[imageIndex], width/2+xPosition, height/2, 110, 160);
  imageIndex=(imageIndex+1)% 10;
  image(images2[imageIndex], width/2-xPosition, height/2, 110, 160);
  imageIndex=(imageIndex+1)% 10; 
  
}
