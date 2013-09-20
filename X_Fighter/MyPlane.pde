// class for my plane

class MyPlane {
  int xpos;
  int ypos;
  int speed = 2; // move 2 pixels per frame if the arrow key is pressed
  int shootRate = 15; // shoot one bullet every 15 frames
  ArrayList<Bullet> bullets;

  MyPlane(int x, int y) {
    xpos = x;
    ypos = y;
    bullets = new ArrayList<Bullet>();
  }
  
  void shoot() {
    shootRate -= 1;
    if (shootRate == 0) {
      shootRate = 15;
      bullets.add(new Bullet(plane.xpos, plane.ypos));
    }
  }

  // remove the bullet that run out of lifetime and display others
  void updateBullet()
  {
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet b = bullets.get(i);    
      if (b.lifetime == 0)
        bullets.remove(i);
      else
        b.display();
    }
  }

  //plane is controled by arrow keys;
  void move()
  {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT && (plane.xpos - plane.speed) > 0) 
          plane.xpos -= plane.speed;

        if (keyCode == RIGHT && (plane.xpos + plane.speed) < width) 
          plane.xpos += plane.speed;

        if (keyCode == UP && (plane.ypos - plane.speed) > 0) 
          plane.ypos -= plane.speed;

        if (keyCode == DOWN && (plane.ypos + plane.speed) < height) 
          plane.ypos += plane.speed;
      }
    }
  }
    
  void display() {    
    strokeWeight(20);
    stroke(255);
    point(xpos, ypos); //the plane is a point
    updateBullet();
  }
}

