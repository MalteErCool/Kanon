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
    
    angle = atan2(mouse.y, mouse.x);
    
    // max power
    mouse.limit(200);
    
    // min power
    if (mouse.mag() <= 100) {
      mouse = new PVector(100 * cos(angle), 100 * sin(angle));
    }
    
    // power conversion
    power = new PVector(mouse.x/20, mouse.y/20);
  }
  
  void shoot() {
    if (keyPressed == true && key == 32 && velocity.mag() == 0 && i < 10) {
      velocity.x = power.x;
      velocity.y = power.y;
      if (i < 10) {
        i++;
      }
    }
  }
  
  void display() {
    // display power
    translate(location.x, location.y);
    line(0, 0, mouse.x, mouse.y);
    
    // display angle
    textSize(22);
    text((-1 * angle * 180) / PI, 0 + 75, 0);
    
    // display cannon
    fill(195, 255, 5, 50);
    stroke(0);
    ellipse(0, 0, 32, 32);
    
    pushMatrix();
    
    rotate(angle);
    fill(195, 255, 5, 50);
    stroke(0);
    rect(0 + 75/2, 0, 75, 32);
    
    popMatrix();
    
    fill(125, 255, 150);
    stroke(0);
    triangle(0,0, 0 - 16, 0 + 32, 0 + 16, 0 + 32);
  } 
}
