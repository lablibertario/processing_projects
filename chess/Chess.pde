void setup() {
  size(500,500);
  drawChess(9);
}

void drawChess(int count) {
  for(int i = 0; i < count*count; i++) {
    for(int a = 0; a < count; a++) {
      if((a + i + 1) % 2 == 0) {
        fill(255,255,255);
      } else {
        fill(0,0,0);
      }
      rect((float) a * width/count, (float) i * width/count, (float) width/count, (float) width/count);
    }
  }
}