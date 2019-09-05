class World {
  
  float sx;
  float sy;
  float sw;
  float sc;
  float lx;
  float ly;
  float lw;
  float lh;
  float lc;
  
  World(float x_, float y_, float w_, float h_, float c_) {
    // solid
    fill(0);
    stroke(0);
    rect(x_*0, y_, w_*1/3, h_);
    // liquid
    fill(0);
    stroke(0);
    rect(x_*1/3, y_, w_*1/3, h_);
    lx = x_;
    ly = y_;
    lw = w_;
    lh = h_;
    lc = c_;
    // solid
    fill(0);
    stroke(0);
    rect(x_*2/3, y_, w_*1/3, h_);
  }
  
  // create solid(location x, location y, width, height, rgba, drag c)
  void solid(float x_, float y_, float w_, float h_, float r_, float g_, float b_, float a_, float c_) {
    fill(r_, g_, b_, a_);
    stroke(r_, g_, b_, a_);
    rect(x_, y_, w_, h_);
    sx = x_;
    sy = y_;
    sw = w_;
    sc = c_;
  }
  
  // create liquid(location x, location y, width, height, rgba, drag c)
  void liquid(float x_, float y_, float w_, float h_, float r_, float g_, float b_, float a_, float c_) {
    fill(r_, g_, b_, a_);
    stroke(r_, g_, b_, a_);
    rect(x_, y_, w_, h_);
    lx = x_;
    ly = y_;
    lw = w_;
    lh = h_;
    lc = c_;
  }
  
  boolean borders(PVector vector) {
    if (vector.x <= 0 || vector.x >= width) {
      return true;
    } else {
      return false;
    } 
  }
  
  boolean solid(PVector vector) {
    if (vector.x > sx && vector.x < sx + sw && vector.y < sy) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean liquid(PVector vector) {
    if (vector.x > lx && vector.x < lx + lw && vector.y > ly && vector.y < ly + lh) {
      return true;
    } else {
      return false;
    }
  } 
  
  /*
  void check(PVector vector) {
    if (liquid == true) {
      // change acceleration
    }
    if (solid == true) {
      // change acceleration
    }
    if (borders == true) {
      // change acceleration
    }
  }
  */
}
