void setup() {
  size(500,500);
  drawRect(5);
}

void drawRect(int count) {
  float space = width/((count*2) + 1);
  float x = space;
  for(int i = 0; i < count; i++) {
    rect(x,space, space, height - 2*space);
    x = x + 2*space;
  }
}