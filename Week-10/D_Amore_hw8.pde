//Peter D'Amore
//HW 8: Data Visualiztion

int[] homeruns;

void setup() {
  size(670, 240);
  Table stats = loadTable("Donaldson.csv", "header");
  homeruns = new int[stats.getRowCount()];
  for (int x = 0; x < stats.getRowCount(); x++) {
    homeruns[x] = stats.getInt(x, 4);
  }
}

void draw() {
  scale(2);
  background(#000893);
  strokeWeight(1);
  stroke(255);
  fill(#D12225);
  beginShape();
  for (int x = 0; x < homeruns.length - 2; x++) {
    float a = map(x, 0, homeruns.length - 1, 20, 460);
    float b = map(homeruns[x], 10, 60, 100, 20);
    vertex(a, b);
  }
  vertex(313, height);
  vertex(20, height);
  endShape();
  line(20, 20, 312, 20);
  line(20, 20, 20, height);
  line(93, 20, 93, height);
  line(167, 20, 167, height);
  line(240, 20, 240, height);
  line(313, 20, 313, 56);
  
  String title = "Josh Donaldson HR's: 2012-2016";
  fill(255);
  text(title, 20, 5, 200, 40);
}