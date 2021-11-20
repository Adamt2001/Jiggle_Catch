// This class will create randomly coloured and sized rectangles, allowing them to move too.
class Rectangle{
  // Initial setup of all variables used.
  int X, Y, offsetX, offsetY, W, H, R, G, B;
  boolean State;

  Rectangle(){
    // Setting random values for the x,y,w,h,r,g,b values.
    X = (int) random(width);
    Y = (int) random(height);
    W = (int) random(10,50);
    H = (int) random(10,50);
    R = (int) random(200);
    G = (int) random(200);
    B = (int) random(200);
    State = true;
    direction();
    
    
  }
  
  void direction(){
    // Randomly moving the rectangles.
    if ((int) random(2) == 0){
      offsetX = -1;
    } else {
      offsetX = 1;
    }
      
    if ((int) random(2) == 0){
      offsetY = -1;
    } else {
      offsetY = 1;
    } 
  }
  
  // Function to move the rectangles in random directions.
  void move(){
    X=X+offsetX;
    Y=Y+offsetY;
    
    // Randomly changes the direction of the square to make them "jiggle"
    if ((int) random(6) == 0){
      offsetX = -offsetX;
    }
    if ((int) random(6) == 0){
      offsetY = -offsetY;
    }
    
    // detects edges
    if (X > WIDTH-W/2){
      offsetX=-1;}
    if (X < W/2){
      offsetX=1;}
    if (Y > HEIGHT-H/2){
      offsetY=-1;}
    if (Y < H/2){
      offsetY=1;}
  }
  
  // Function to draw the rectangle when .draw() is used
  void draw(){
    fill(R,G,B);
    rect(X,Y,W,H);
  }
}
