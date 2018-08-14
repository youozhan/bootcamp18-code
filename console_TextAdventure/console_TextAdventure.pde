String screenText[]=new String[9];
int stage=0;

void setup(){
  screenText[0]="You are going to throw a party! Press s to start the game!";
  screenText[1]="How many people do you want to invite?";
  screenText[2]="1. 3 people - it's family";
  screenText[3]="2. 8 people - I want to have fun with my friends.";
  screenText[4]="3. 12 people - we have an event to celebrate!";
  screenText[5]="Time for the grocery store. Which main dish are you going to prepare?";
  screenText[6]="1. Fried Chicken and sweet potato fries";
  screenText[7]="2. Steak and broccoli salad";
  screenText[8]="3. Shrimp salad and pasta";
  
  println(screenText[0]);
}

void draw(){
}

void keyPressed(){
  if (key=='s'){
    stagePrint(0);
    stage=1;
  }
  
  if (key=='c'){
    stagePrint(stage);
    stage++;
  }
  
  if (key=='1' && stage==1){
    println("Option 1 selected, press c to continue");
  }else if (key=='2' && stage==1){
    println("Option 2 selected, press c to continue");
  }else if (key=='3' && stage==1){
    println("Option 3 selected, press c to continue");
  }
}

void stagePrint(int stage){
  if(stage==0){
    println(screenText[1]);
    println(screenText[2]);
    println(screenText[3]);
    println(screenText[4]);
  }else if(stage==1){
    println(screenText[5]);
    println(screenText[6]);
    println(screenText[7]);
    println(screenText[8]);
  }
}
