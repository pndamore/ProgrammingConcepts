//Peter D'Amore
//HW 9: Image Manipulation

import processing.video.*;

Capture video;
PImage background;

void setup() {
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();

  background = createImage(video.width, video.height, RGB);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  loadPixels();
  video.loadPixels();
  background.loadPixels();
  updatePixels();

  tint(mouseX, mouseY, 100);
  translate(width/2, height/2);
  imageMode(CENTER);
  image(video, 0, 0, mouseX, mouseY);
}

void mousePressed() {
  background.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  background.updatePixels();
}