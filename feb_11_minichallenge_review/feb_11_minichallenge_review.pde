//-------GLOBAL VARIABLES START----------
int[] firstColorArray; //array to store the first shape's different color values
int firstIndex = 0; //index used to point to a position in the first array
int[] secondColorArray; //array to store the second shape's different color values
int secondIndex = 0; //index used to point to a position in the second array
//-------GLOBAL VARIABLES END-------------

void setup() {
  size(500, 500);
  firstColorArray = new int[4]; //create an array that can hold 4 integers
  //populate the first array with different color hex values
  //the values are white, red, green and blue
  firstColorArray[0] = #ffffff;
  firstColorArray[1] = #ff0000;
  firstColorArray[2] = #00ff00;
  firstColorArray[3] = #0000ff;
  secondColorArray = new int[4]; //create an array that can hold 4 integers
  //populate the second array with different color hex values
  //the values are white, orange, yellow and purple
  secondColorArray[0] = #ffffff;
  secondColorArray[1] = #ffa500;
  secondColorArray[2] = #ffff00;
  secondColorArray[3] = #800080;
}

void draw() {
  //set the background to black so we can clear anything that was previously drawn
  background(0);
  //set the first shape's stroke to whatever the current first shape color is
  stroke(firstColorArray[firstIndex]);
  //set the first shape's fill to whatever the current first shape color is
  fill(firstColorArray[firstIndex]);

  /*if we're pointing to the first position in the first array, draw a line
   if we're pointing to the second position in the first array, draw a circle
   if we're pointing to the third position in the first array, draw a square
   if we're pointing to the fourth position in the first array, draw a triangle
   */
  if (firstIndex == 0) {
    line(110, 250, 190, 250);
  } else if (firstIndex == 1) {
    ellipse(150, 250, 80, 80);
  } else if (firstIndex == 2) {
    rect(110, 210, 80, 80);
  } else if (firstIndex == 3) {
    triangle(110, 290, 150, 210, 190, 290);
  }

  //set the second shape's stroke to whatever the current second shape color is
  stroke(secondColorArray[secondIndex]);
  //set the second shape's fill to whatever the current second shape color is
  fill(secondColorArray[secondIndex]);

  /*if we're pointing to the first position in the second array, draw a line
   if we're pointing to the second position in the second array, draw a circle
   if we're pointing to the third position in the second array, draw a square
   if we're pointing to the fourth position in the second array, draw a triangle
   */
  if (secondIndex == 0) {
    line(310, 250, 390, 250);
  } else if (secondIndex == 1) {
    ellipse(350, 250, 80, 80);
  } else if (secondIndex == 2) {
    rect(310, 210, 80, 80);
  } else if (secondIndex == 3) {
    triangle(310, 290, 350, 210, 390, 290);
  }
}

void keyPressed() {
  if (key == '1') {
    //when 1 is pressed, update the first array's color index to point to white
    firstIndex = 0;
  } else if (key == '2') {
    //when 2 is pressed, update the first array's color index to point to red
    firstIndex = 1;
  } else if (key == '3') {
    //when 3 is pressed, update the first array's color index to point to green
    firstIndex = 2;
  } else if (key == '4') {
    //when 4 is pressed, update the first array's color index to point to blue
    firstIndex = 3;
  } else if (key == '7') {
    //when 7 is pressed, update the second array's color index to point to white
    secondIndex = 0;
  } else if (key == '8') {
    //when 8 is pressed, update the second array's color index to point to red
    secondIndex = 1;
  } else if (key == '9') {
    //when 9 is pressed, update the second array's color index to point to green
    secondIndex = 2;
  } else if (key == '0') {
    //when 0 is pressed, update the second array's color index to point to blue
    secondIndex = 3;
  }
}

void mouseClicked() {
  //when the mouse is clicked, reset the screen so that both shapes are white lines
  firstIndex = 0;
  secondIndex = 0;
}