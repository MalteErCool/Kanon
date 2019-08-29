Ammo[] ammo = new Ammo[10];

PVector location = new PVector(20, 20);
PVector velocity = new PVector(0, 0);

boolean cannonReady = true;
int i = 0;

void setup() {
  size(1280,720);
  
  for (int i = 0; i < 10; i++) {
    ammo[i] = new Ammo(location.x, location.y, 16, 16);
  }
  
}

void draw() {
  background(255);
  
  float vmag = velocity.mag();
  
  if (vmag == 0) {
    cannonReady = true;
  }
  
  if (cannonReady == true) {
    if (keyPressed == true && key == 32) {
      velocity.x = random(0, 10);
      velocity.y = 0;
    }
  }
  
  ammo[i].update();
  
  for (int i = 0; i < 10; i++) {
    ammo[i].display();
  }
  
}
