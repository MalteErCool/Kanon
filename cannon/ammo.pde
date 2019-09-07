class Ammo {
  
  // create vars
  PVector ammo = new PVector(0, 0);
  float w;
  float h;
  boolean rotate = false;
 
  // create Ammo() at xy with width w and height h and parse w and h as w_ and h_ to display()
  Ammo(float x_, float y_, float w_, float h_) {
    ammo = new PVector(x_, y_);
    w = w_;
    h = h_;
  }
  
  // check for hitbox
  void hit() {
    // when ammo hit surface, stop moving and rotating
    if (ammo.y > 524) {
      velocity.set(0, 0);
      rotate = false;
      
      // when index < 9, up index by 1 else display text
      if (i < 9) {
        i++;
      } else {
        textAlign(CENTER);
        fill(0);
        textSize(50);
        text("Game Over!", width/2, 300, 200);
      }
    }
  }
  
  // display shot counter
  void counter() {
    textAlign(CENTER);
    fill(0);
    textSize(200);
    text(counter, width/2, 200, 200);
  }
  
  // ammo mover
  void update() {
    // when moving, apply gravity
    if (velocity.mag() > 0) {
      velocity.add(gravity);
      rotate = true;
    }
    // apply velocity and thus move ammo
    ammo.add(velocity);
  }
  
  // display ammo
  void display() {
    pushMatrix();
    
    translate(ammo.x, ammo.y);
    
    if (rotate == true) {
      rotate(velocity.mag());
      noStroke();
      fill(0);
      rect(0, 0, w, h);
    } else {
      noStroke();
      fill(0);
      rect(0, 0, w, h);
    }
    
    popMatrix();
  }
}
