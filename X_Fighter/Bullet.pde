class Bullet {
  int xpos;
  int ypos;
  int speed = 4; // move 4 pixels per draw
  int lifetime = 60; // stay on the screen for 60 frames, i.e. 1 second
  
  Bullet(int x, int y) {
    xpos = x;
    ypos = y;
  }
  
  void display() {
    if (lifetime > 0) {
      lifetime -= 1;
      ypos -= speed;
      strokeWeight(5);
      stroke(255);
      point(xpos, ypos); // the bullet is a point
    }
  }
}
