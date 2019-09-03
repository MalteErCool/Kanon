class Ammo {
  
  PVector ammo = new PVector(0, 0);
  float w_;
  float h_;
 
  Ammo(float x, float y, float w, float h) {
    ammo = new PVector(x, y);
    w_ = w;
    h_ = h;
  }
  
  void coalition() {
    if (ammo.x >= 1200) {
      velocity = new PVector(0, 0);
      i += 1;
    }
  }
    
  void update() {
    if (velocity.mag() > 0) {
      velocity.add(acceleration);
    }
    ammo.add(velocity);
    
    fill(0);
    textSize(200);
    text(i, width/2 - 50, height/2 - 100, 200);
  }
  
  void display() {   
    pushMatrix();
    translate(ammo.x, ammo.y);
    rotate(velocity.mag());
    fill(50, 50, 50);
    rect(0, 0, w_, h_);
    popMatrix();
  }
}
