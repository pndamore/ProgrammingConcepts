//Peter D'Amore
//HW 1: Example 2-2

void setup() {
  size(480, 120);
}

void draw() {
  if (mousePressed) {
    fill(0);
    stroke(255);
  } else {
    fill(255);
    stroke(0);
  }
  ellipse(mouseX, mouseY, 80, 80);
}