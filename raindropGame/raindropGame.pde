int y = 0;
int x = (int) random(500);
void setup() {
  size(500, 500);
}

void draw() {
  background(12, 342, 43);
  fill(23, 54, 73);
  rect(mouseX, 450, 40, 80);
  fill(0,0,236);
  y = y+5;
  ellipse(x, y, 10, 30);
  noStroke();
  if (y == 500) {
    y = 0;
    x = (int) random(500);
  }
}
