// -------------------------------------------------------------
//
// Name: Adam Taylor
//
// Project: This project was for Week 8 of my processing module,
//          to create a simple "jiggle Catch" game from scratch.
//         
// -------------------------------------------------------------

// initial setup of static variables
Rectangle [] rectangles;
final int numRects = 50;
final int WIDTH = 500;
final int HEIGHT = 500;

// used to set the size of the canvas from the static variables
void settings(){
  size(WIDTH,HEIGHT);
}

// My initial setup, including creating new rectangles for each instance in the array
void setup(){
  background(0);
  frameRate(20);
  rectangles = new Rectangle[numRects];
  for(int i=0;i<numRects;i++){
    rectangles[i] = new Rectangle();
  }
}

// Checkes if the point is inside the rectangle
boolean pointInside(int PX, int PY, int RX, int RY, int RW, int RH){
  if ((PX>=RX && PX<=RX+RW) && (PY>=RY && PY<=RY+RH)){
    return (true);
  }else{
    return (false);
  }
}

// used to draw the rectangles to the screen.
void draw(){
  background(0);
  for(int i=0;i<numRects;i++){
    // will only draw the rectangle if the state is true
    if(rectangles[i].State == true){
      rectangles[i].move();
      rectangles[i].draw();
    }
  }
}

// when the mouse is clicked this function will run
void mouseClicked(){
  for(int i=0;i<numRects;i++){
    // if the pointer is inside the rectangle when clicked, it will change state to false
    if(pointInside(mouseX, mouseY, rectangles[i].X, rectangles[i].Y, rectangles[i].W, rectangles[i].H)){
      rectangles[i].State = false;
    }
  }
}
