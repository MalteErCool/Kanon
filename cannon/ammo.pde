class Ammo {
  
  PVector ammo;
  float w_;
  float h_;
 
  Ammo(float x, float y, float w, float h) {
    ammo = new PVector(x, y);
    w_ = w;
    h_ = h;
  }

  void update() {
    ammo.add(velocity);
  }
  
  void display() {
    fill(50, 50, 50);
    rect(ammo.x, ammo.y, w_, h_);
  }
  
}
