class Planets {

  float x, y;
  float rot;
  float speed;
  float w;

  Planets(float tempX, float tempY, float tempSpeed, float tempW) {
    x = tempX;
    y = tempY;

    rot = 0;
    speed = tempSpeed;
    w = tempW;
  }

  //Angle
  void spin() {
    rot += speed;
  }

  // Display "planets"
  void display() {
    noStroke();
    fill(255, 50);
    pushMatrix(); 
    translate(x, y);
    sphereDetail(10);
    rotate(rot);
    sphere(10);
    popMatrix();
  }
}