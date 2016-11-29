//Peter D'Amore
//HW 3: Rudimentary Photoshop

String cTxt = "Hold 1 for Cyan";
String mTxt = "Hold 2 for Magenta";
String yTxt = "Hold 3 for Yellow";
String bTxt = "Hold 4 for Black";
String eraseTxt = "Hold 'E' to Erase";

color c = color(0, 255, 255);
color m = color(255, 0, 255);
color y = color(255, 255, 0);
color k = color(0);
color w = color(255);

int minX = 40;
int minY = 40;
int maxX = 600;
int maxY = 440;

void setup() {
  size(640, 480);
  background(0);
  fill(255);
  stroke(#21810C);
  strokeWeight(5);
  rect(30, 30, 580, 420);

  text(cTxt, 52, 15, 240, 100);
  text(mTxt, 158, 15, 240, 100);
  text(yTxt, 280, 15, 240, 100);
  text(bTxt, 392, 15, 240, 100);
  text(eraseTxt, 496, 15, 240, 100);
}

void draw () {
  if ((mouseX > minX) && (mouseX < maxX)) {
    if ((mouseY > minY) && (mouseY < maxY)) {
      if (keyPressed) {
        if (key == '1') {
          fill(c);
          noStroke();
          rect(mouseX, mouseY, 25, 25);
        } else {
          if (key == '2') {
            fill(m);
            noStroke();
            rect(mouseX, mouseY, 25, 25);
          } else {
            if (key == '3') {
              fill(y);
              noStroke();
              rect(mouseX, mouseY, 25, 25);
            } else {
              if (key == '4') {
                fill(k);
                noStroke();
                rect(mouseX, mouseY, 25, 25);
              } else {
                if ((key == 'E') || (key == 'e')) {
                  fill(w);
                  noStroke();
                  rect(mouseX, mouseY, 50, 50);
                }
              }
            }
          }
        }
      }
    }
  }
}