Ammo[] ammo = new Ammo[10];
Power power = new Power();
int i = 0;
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
  background(255);
  rectMode(CENTER);
  ammo[i].coalition();
  ammo[i].update();
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  power.shoot();
  power.update();
  power.display();
}
