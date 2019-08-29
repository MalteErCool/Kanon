PVector location = new PVector(20, 20);
PVector velocity = new PVector(0, 0);
// float i = 0;

void setup() {
  size(1280,720);
}

void draw() {
  background(255);
  if (keyPressed == true && key == 32) {
    velocity.x = 5;
    velocity.y = 0;
    // i = i + 1;
  }
  
  location.add(velocity);
  fill(50, 50, 50, 50);
  ellipse(location.x, location.y, 16, 16);
  
}
