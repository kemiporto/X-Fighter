MyPlane plane;

void setup() {
  //blank background
  size(300, 500);  

  plane = new MyPlane(width/2, height); 
}

void draw() {
  background(0);
  
  plane.move();
  plane.shoot();
  plane.display();  
}

