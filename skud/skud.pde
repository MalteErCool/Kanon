Ammo[] ammo = new Ammo[10];
/*
PVector ammo[] = new PVector[10];
*/

/*
PVector location = new PVector(20, 20);
PVector velocity = new PVector(0, 0);
*/

void setup() {
  size(1280,720);
  
  for (int i = 0; i < 10; i++) {
    ammo[i] = new Ammo(random(width), random(height));
  }
  
  /*
  for (PVector i : ammo) {
    i.set(20, 20);
  }
  */
  
}

void draw() {
  background(255);
  
  /*
  if (keyPressed == true && key == 32) {
    velocity.x = random(0, 10);
    velocity.y = 0;
  }
  */
  
  /*
  for (PVector i : ammo) {
    fill(50, 50, 50, 50);
    ellipse(i.x, i.y, 16, 16);
  }
  */
  
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  
  /*
  location.add(velocity);
  fill(50, 50, 50, 50);
  ellipse(location.x, location.y, 16, 16);
  */
  
}
