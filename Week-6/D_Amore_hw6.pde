//Peter D'Amore
//HW 6: Robot w/ Function Consolidation

//Antennae still giving me problems; it has something to do with it being a line function because it works fine if you just change it to rect

//variables
int x = 5;
int y = 5;
color prim = #2DA54A;
color sec = #FAF360;
color w = 255;
color k = 0;
color g = 80;
color back = #1B869B;
int a = 250;
int b = 250;
String left = "Hold 'A' to move left";
String right = "Hold 'D' to move right";
String up = "Hold 'W' to move up";
String down = "Hold 'S' to move down";

void setup() {
  size(500, 500);
}

void draw() {
  background(back);
  directions();
  movement();
  robot();
}

void directions() {
  text(up, 315, 50, 240, 100);
  text(down, 315, height + 35, 240, 100);
  text(left, 110, height/2, 220, 30);
  text(right, width - 5, height/2, 220, 30);
}  

void movement() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      a--;
      if (a < 0) {
        a = width;
      }
    } else {
      if (key == 'd' || key == 'D') {
        a++;
        if (a > width) {
          a = 0;
        }
      } else {
        if (key == 'w' || key == 'W') {
          b--;
          if (b < 0) {
            b = height;
          }
        } else {
          if (key == 's' || key == 'S') {
            b++;
            if (b > height) {
              b = 0;
            }
          }
        }
      }
    }
  }
}

void robot() {
  ellipseMode(CENTER);
  rectMode(CENTER);

  //hover motor
  fill(sec);
  stroke(k);
  ellipse(a, b + 140, x * 14, y * 10);
  fill(g);
  stroke(w);
  rect(a, b + 120, x * 15, y * 10);

  //neck
  rect(a, b - 70, x * 10, y * 4);

  //head
  fill(prim);
  ellipse(a, b - 100, x * 20, y * 10);

  //eye
  stroke(k);
  fill(sec);
  ellipse(a, b - 100, x * 2, y * 5);
  fill(k);
  ellipse(a, b - 100, x, y * 2);

  //antennae
  stroke(w);
  //line(a - 50, b - 175, x * 40, y * 40);
  //line(a + 50, b - 175, x * 60, y * 40);

  //body
  fill(prim);
  ellipse(a, b + 35, x * 28, y * 40); 

  //arms
  fill(sec);
  stroke(k);
  ellipse(a - 145, b + 70, x * 4, y * 4);
  ellipse(a + 145, b + 70, x * 4, y * 4);
  stroke(w);
  fill(g);
  ellipse(a + 60, b - 35, x * 5, y * 5);
  ellipse(a - 60, b - 35, x * 5, y * 5);
  fill(prim);
  rect(a + 100, b - 35, x * 15, y * 4.5);
  rect(a - 100, b - 35, x * 15, y * 4.5);
  fill(prim);
  rect(a + 145, b + 20, x * 4.5, y * 20);
  rect(a - 145, b + 20, x * 4.5, y * 20);
  fill(g);
  ellipse(a + 145, b - 35, x * 5, y * 5);
  ellipse(a - 145, b - 35, x * 5, y * 5);
}