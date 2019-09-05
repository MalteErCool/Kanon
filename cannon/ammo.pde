class Ammo {
  
  // vars
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
    // if rect ammo hit surface then stop moving and rotating
    if (ammo.y > 524) {
      velocity.set(0, 0);
      rotate = false;
      
      // if index i is less than 9 then change index by 1 else say "game over"
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
  
  void counter() {
    textAlign(CENTER);
    fill(0);
    textSize(200);
    text(counter, width/2, 200, 200);
  }
  
  // move ammo
  void update() {
    if (velocity.mag() > 0) {
      velocity.add(acceleration);
      rotate = true;
    }
    ammo.add(velocity);
  }
  
  void display() {
    // display ammo
    pushMatrix();
    
    translate(ammo.x, ammo.y);
    
    if (rotate == true) {
      rotate(abs(velocity.mag()));
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
