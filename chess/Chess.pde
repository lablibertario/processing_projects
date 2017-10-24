void setup() {
  size(500,500);
  drawGrid(10);
}

void drawGrid(int count) {
  float w = (float) width/count;
  int a = 0, b = 0;
  for(int i = 0; i < (count*count); i++, b++) {
    if(i % count == 0 && i != 0) {
      a++;
    }
    if(b % count == 0) {
      b = 0;
    }
    if(i % 2 == 0) {
      fill(0,0,0);
    } else {
      fill(255,255,255);
    }
    rect(b*w,a*w,w,w);
  }
}