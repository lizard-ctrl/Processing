// this program draws a rectangle to the center of the screen.
// as shown in the gif, use map() and other means to use the mouse
// position to change attributes of the rectangle. 

// when mouseY is at height, the rectangle should be the width 
// and height of the screen.

// when mouseX is at 0, the rect should be red. when mouseX
// is at width, it should be blue. (it doesn't matter what colors are in-between.)

// moving the mouse from the left to the right side of the screen
// should result in the rectangle doing one full rotation (360 degrees).

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  // add a mapped rotation here
  float s = map(mouseX, 0, width, 0, TWO_PI); 
  // map the value of s here
  rotate (s);

  fill(255,0 , mouseX);
 if (mouseX > 300){
 fill (0, 145, mouseX);
 }
  //color c = color(255);
  
// fill(c);
  rect(0, 0, mouseY, mouseY);
  popMatrix();
}
