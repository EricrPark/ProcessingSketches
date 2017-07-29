int xcoord = (int)random(750);
//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.


void setup() {
  size(800, 200);
}

void draw() {
  fill(random(255), random(255), random(255));
  //3. make it a nice color
   if(mousePressed){
      xcoord = xcoord+600;
   }
  //4. if the mouse is pressed...
     
//5. ... change the X co-ordinate so that the dot moves to the right
  ellipse(xcoord, random(200), 100, 100);  
  /*ellipse(xcoord, random(200), 100, 100);  
  ellipse(xcoord, random(200), 100, 100); 
  ellipse(xcoord, random(200), 100, 100);*/   
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.

//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)
  if(xcoord >= 800){
    playSound();
 }
    //7. Use this method to play a ding when your dot crosses the finish line. 


}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("Fatality.wav");
    sound.trigger();
    soundPlayed = true;
  }
}



