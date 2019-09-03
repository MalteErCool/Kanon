class Power {
  
  PVector power;
  PVector mouse;
  float angle;
  
  Power() {
    angle = 0;
    mouse = new PVector(mouseX, mouseY);
  }
  
  void update() {
    // power using mouse
    mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);
    
    // ToDo contrain direction...
    
    // max power
    mouse.limit(210);
    
    // min power
    if (mouse.mag() <= 210/2) {
      angle = atan2(mouse.y, mouse.x);
      mouse = new PVector(105 * cos(angle), 105*sin(angle));
    }
    
    // power conversion
    power = new PVector(mouse.x/20, mouse.y/20);
  }
  
  void shoot() {
    if (keyPressed == true && key == 32 && velocity.mag() == 0) {
      velocity.x = power.x;
      velocity.y = power.y;
    }
  }
  
  void display() {
    translate(location.x, location.y);
    line(0, 0, mouse.x, mouse.y);
    textSize(22);
    text(angle, 20, 20);
  }
  
}
