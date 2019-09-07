// create ammo object as array of 10
Ammo[] ammo = new Ammo[10];
// create power object
Power power = new Power();
// set global vars
int i = 0;
int counter = 0;
PVector location = new PVector(32, 500);
PVector velocity = new PVector(0, 0);
PVector gravity = new PVector(0, 0.091);

void setup() {
  size(1280,720);
  // set location and size of ammo
  for (int i = 0; i < 10; i++) {
    ammo[i] = new Ammo(location.x, location.y, 16, 16);
  }
}

void draw() {
  background(60, 200, 255);
  rectMode(CENTER);
  // init ammo functions hit(), counter(), update() and display()
  ammo[i].hit();
  ammo[i].counter();
  ammo[i].update();
  // make display() persistent; ignore selected index of array
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  // init power functions constrain(), shoot(), update() and display()
  power.contrain();
  power.shoot();
  power.update();
  power.display();
  
  // display gorund
  pushMatrix();
  noStroke();
  fill(95, 215, 85);
  rect(608, 142, 1280, 220);
  popMatrix();
}
