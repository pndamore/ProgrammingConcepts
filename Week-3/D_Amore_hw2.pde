//Peter D'Amore
//HW 2: Robot

//variables
int x = 5;
int y = 5;
color prim = #2DA54A;
color sec = #FAF360;
color w = 255;
color b = 0;
color g = 80;
color back = #1B869B;

void setup() {
  size(500, 500);
  background(back);
}

void draw() {
  ellipseMode(CENTER);
  rectMode(CENTER);
  //hover motor
  fill(sec);
  stroke(b);
  ellipse(width/2, height/2 + 140, x * 14, y * 10);
  fill(g);
  stroke(w);
  rect(width/2, height/2 + 120, x * 15, y * 10);
  //neck
  rect(width/2, height/2 - 70, x * 10, y * 4);
  //head
  fill(prim);
  ellipse(width/2, height/2 - 100, x * 20, y * 10);
  //eye
  stroke(b);
  fill(sec);
  ellipse(width/2, height/2 - 100, x * 2, y * 5);
  fill(b);
  ellipse(width/2, height/2 - 100, x, y * 2);
  //antennae
  stroke(w);
  line(width/2 - 50, height/2 - 175, x * 40, y * 40);
  line(width/2 + 50, height/2 - 175, x * 60, y * 40);
  //body
  fill(prim);
  ellipse(width/2, height/2 + 35, x * 28, y * 40); 
  //arms
  fill(sec);
  stroke(b);
  ellipse(width/2 - 145, height/2 + 70, x * 4, y * 4);
  ellipse(width/2 + 145, height/2 + 70, x * 4, y * 4);
  stroke(w);
  fill(g);
  ellipse(width/2 + 60, height/2 - 35, x * 5, y * 5);
  ellipse(width/2 - 60, height/2 - 35, x * 5, y * 5);
  fill(prim);
  rect(width/2 + 100, height/2 - 35, x * 15, y * 4.5);
  rect(width/2 - 100, height/2 - 35, x * 15, y * 4.5);
  fill(prim);
  rect(width/2 + 145, height/2 + 20, x * 4.5, y * 20);
  rect(width/2 - 145, height/2 + 20, x * 4.5, y * 20);
  fill(g);
  ellipse(width/2 + 145, height/2 - 35, x * 5, y * 5);
  ellipse(width/2 - 145, height/2 - 35, x * 5, y * 5);
  
}