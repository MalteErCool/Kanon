Ammo[] ammo = new Ammo[10];
int i = 0;

PVector location = new PVector(20, 600);
PVector velocity = new PVector(0, 0);
PVector acceleration = new PVector(0, 0.091);
PVector mouse = new PVector(mouseX, mouseY);
PVector power;

void setup() {
  size(1280,720);
  for (int i = 0; i < 10; i++) {
    ammo[i] = new Ammo(location.x, location.y, 16, 16);
  }
}

void draw() {
  background(255);
  
  rectMode(CENTER);
  
  // when space is pressed and no ammo is moving
  if (keyPressed == true && key == 32 && velocity.mag() == 0) {
    velocity.x = power.x;
    velocity.y = power.y;
  }
  
  // check for coalition and move/update ammo
  ammo[i].coalition();
  ammo[i].update();
  
  
  // choose between presistent and non-presistent ammo
  
  // non-presistent ammo
  ammo[i].display();
  
  // presistent ammo
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  //
  
  // power
  mouse = new PVector(mouseX, mouseY);
  mouse.sub(location);  
  
  // power direction
  float angle = atan2(mouse.y, mouse.x);
  // contrain direction...
  
  // max power
  mouse.limit(210);
  
  // min power
  // change to contrains() func.
  if (mouse.mag() <= 210/2) {
    mouse = new PVector(105 * cos(angle), 105*sin(angle));
  }
  
  // power line
  translate(location.x, location.y);
  line(0, 0, mouse.x, mouse.y);
  
  // power conversion
  power = new PVector(mouse.x/20, mouse.y/20);
  
  textSize(22);
  text(angle, 20, 20);
  
}
