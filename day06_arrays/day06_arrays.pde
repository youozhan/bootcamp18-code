//STEP1: Declare and name the Array
String[] words= {"Live", "Long", "and", "prosper"};

int index=0;

void setup() {
  size(640, 320);
}  

void draw() {
  background(0);
  fill(255);
  textSize(30);
  text(words[index], width/2-20, height/2);
}


void mousePressed() {

  //increment index value 
  index= index+1;


  //if index value exceeds the length of array reset to 0
  if (index>3) { 
    index=0;
  }
}