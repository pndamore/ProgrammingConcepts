PImage starfield, earthTex;
PShape earth;
float x, y, z;
float moveX, moveZ;

void setup() {
  size(700, 400, P3D);
  sphereDetail(40);
  noStroke();
  earthTex = loadImage("earth.png");
  starfield = loadImage("starfield.jpg");
  earth = createShape(SPHERE, 75);
  earth.setTexture(earthTex);

  x = width/2;
  y = height/2;
  z = 0;
  
  moveX = width/2;
  moveZ = height/2 / tan(PI/6);
}

void draw() {
  camera(moveX, height/2, moveZ, moveX, height/2, 0, 0, 1, 0);
  background(starfield);
  lights();
  rotate(radians(-23.5));
  translate(x - 120, y + 120, z);
  earth.rotateY(radians(0.5));
  shape(earth, 0, 0);

  if (keyPressed) {
    if ((key == 'W') || (key == 'w') || (keyCode == UP)) {
      moveZ = moveZ - 5;
    } else {
      if ((key == 'S') || (key == 's') || (keyCode == DOWN)) {
        moveZ = moveZ + 5;
      } else {
        if ((key == 'A') || (key == 'a') || (keyCode == LEFT)) {
          moveX = moveX - 5;
        } else {
          if ((key == 'D') || (key == 'd') || (keyCode == RIGHT)) {
            moveX = moveX + 5;
          }
        }
      }
    }
  }
}