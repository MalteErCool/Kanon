class Power {
  
  // create vars
  PVector power;
  PVector mouse;
  float angle;
  
  // create mouse vector
  Power() {
    angle = 0;
    mouse = new PVector(mouseX, mouseY);
  }
  
  // constrain mouse vector location
  void contrain() {
    if (mouseX > location.x && mouseY < location.y) {
      mouse = new PVector(mouseX, mouseY);
    } else if (mouseX > location.x && mouseY > location.y) {
      mouse = new PVector(mouseX, location.y);
    } else if (mouseX < location.x && mouseY < location.y) {
      mouse = new PVector(location.x, mouseY);
    } else {
      mouse = new PVector(location.x + 100, location.y - 100);
    }
  }
  
  // convert mouse vector to power vector
  void update() {
    mouse.sub(location);  
    angle = atan2(mouse.y, mouse.x);
    
    // contrain mouse/power vector length/strength
    // max power
    mouse.limit(200);
    // min power
    if (mouse.mag() <= 100) {
      mouse = new PVector(100 * cos(angle), 100 * sin(angle));
    }
  
    // power conversion
    power = new PVector(mouse.x/20, mouse.y/20);
  }
  
  // shoot ammo according to power
  void shoot() {
    // when cannon loaded and ammo is not moving, shoot once if SPACE is pressed
    if (keyPressed == true && key == 32 && velocity.mag() == 0 && i < 10) {
      // set velocity to power
      velocity.x = power.x;
      velocity.y = power.y;
      // up shot counter by 1
      if (counter < 10) {
        counter++;
      }
    }
  }
  
  void display() {
    // display power
    translate(location.x, location.y);
    stroke(0);
    line(0, 0, mouse.x, mouse.y);
    
    // display cannon
    noStroke();
    fill(130, 130, 130);
    ellipse(0, 0, 32, 32);
    
    pushMatrix();
    
    rotate(angle);
    noStroke();
    fill(130, 130, 130, 200);
    rect(0 + 75/2, 0, 75, 32);
    
    popMatrix();
    
    noStroke();
    fill(120, 100, 60);
    triangle(0,0, 0 - 16, 0 + 32, 0 + 16, 0 + 32);
  } 
}
