Rocketship ship;

void setup () {
  size(800, 600);
  ship = new Rocketship(width/2, height/2, 50, #48C640);
}

void draw () {
  background(0);


  if (keyPressed) {
    ship.move();
  } else {
    ship.hover();
  }
  ship.display();
}