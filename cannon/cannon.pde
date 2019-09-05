Ammo[] ammo = new Ammo[10];
Power power = new Power();
int i = 0;
int counter = 0;
PVector location = new PVector(32, 500);
PVector velocity = new PVector(0, 0);
PVector acceleration = new PVector(0, 0.091);

void setup() {
  size(1280,720);
  for (int i = 0; i < 10; i++) {
    ammo[i] = new Ammo(location.x, location.y, 16, 16);
  }
}

void draw() {
  background(60, 200, 255);
  rectMode(CENTER);
  ammo[i].hit();
  ammo[i].counter();
  ammo[i].update();
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  power.contrain();
  power.shoot();
  power.update();
  power.display();
  
  // floor
  pushMatrix();
  noStroke();
  fill(95, 215, 85);
  rect(608, 142, 1280, 220);
  popMatrix();
}
