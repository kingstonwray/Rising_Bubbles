class Bubble {
  float r, g, b;
  float x, y;
  float sz, speed;
  Bubble() {
    r = (float)(Math.random()*256);
    g = (float)(Math.random()*256);
    b = (float)(Math.random()*256);
    y = height+20;
    x = (float)(Math.random()*width);
    sz = ((float)(Math.random()*30)+5);
    speed = sz*factor;
  }
  Bubble(float r_, float g_, float b_) {
    this();
    r = r_;
    g = g_;
    b = b_;
  }
  Bubble(float x_, float y_) {
    this();
    x = x_;
    y = y_;
  }
  void rise() {
    x += (float)(Math.random()*5)-2.5;
    y -= speed;
    if (y < yValue+sz/2 && r/2 < (g+b)/2) {
      speed = 0;
    }
  }
  void show() {
    fill(r, g, b);
    ellipse(x, y, sz, sz);
  }
  void collison(int index) {
    if (y+sz <0) {
      y = height + sz;
    }
    if ( x-sz/2 < 0 || x+sz/2 > width) {
        bubs.remove(index);
    }
    for (int i = index+1; i < bubs.size(); i++) {
      if ( dist(x, y, bubs.get(i).x, bubs.get(i).y)<=(bubs.get(i).sz+sz)/2) {
        bubs.remove(i);
        bubs.remove(index);
      }
    }
  }
}
