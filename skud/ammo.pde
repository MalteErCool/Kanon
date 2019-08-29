class Ammo {
  
  PVector ammo;
 
  Ammo(float x, float y) {
    ammo = new PVector(x, y);
  }
  
  void display() {
    fill(50, 50, 50);
    ellipse(ammo.x, ammo.y, 16, 16);
  }
  
}
