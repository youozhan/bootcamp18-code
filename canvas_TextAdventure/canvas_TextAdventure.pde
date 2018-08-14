//start the sketch with first screen
int gameScreen = 1;

//declare all the image variables and name them
PImage start;
PImage leftRight;
PImage alec;
PImage sven;

void setup() {
  size(640, 320);
  background(0);

  //load all images
  start = loadImage("start.jpg");
  leftRight = loadImage("leftRight.jpg");
  alec = loadImage("alec.jpg");
  sven = loadImage("sven.png");
}


void draw() {
  background(127);
  if (gameScreen == 1) {
    startScreen();
  } else if (gameScreen == 2) {
    secondScreen();
  } else if (gameScreen == 3) {
    thirdScreen();
  } else if (gameScreen == 4) {
    fourthScreen();
  }
}


//===========================================

//start Screen when gameScreen = 1
void startScreen() {
  image(start, 0, 0);
  fill(0);
  textSize(20);
  text("Start the Game", 400, height/2);
  text("Press 'A' to start ", 400, height/2+50);

  //ask user to input options
  if (key=='a'|| key =='A') {
    //change screen
    gameScreen = 2;
  }
}


//intro screen when gameScreen = 2
//move left or right

void secondScreen() {
  image(leftRight, 0, 0,width,height);
  fill(0);
  textSize(20);
  text("Welcome to screen 2", 220, height/2+100);
  text("Press 'L' to move left ", 220, height/2+120);
  text("Press 'R' to move right ", 220, height/2+140);

  //ask user to input options
  if (key=='l'|| key =='L') {
    gameScreen = 3;
  } else if (key=='r'|| key =='R') {
    gameScreen = 4;
  }
}

//intro screen when gameScreen = 3
//meet alec

void thirdScreen() {

  //image(alec, 0, 0);
  fill(255);
  textSize(20);
  text("Speak to Alec Baldwin", 220, height/2);
  text("Press 'Y' for yes ", 220, height/2+50);
  text("Press 'N' for no ", 220, height/2+100);
}

//intro screen when gameScreen = 4
void fourthScreen() {
  image(sven, 0, 0);
  background(0, 255, 0);
  fill(0);
  textSize(20);
  text("Say hi to Sven", 220, height/2);
  text("Press 'Y' for yes ", 220, height/2+50);
  text("Press 'N' for no ", 220, height/2+100);
}