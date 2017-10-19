void setup() {
  size(500,1000);
  drawCircle(8);
}

void drawCircle(int count) {
  int x = (width/count)/2;
  for(int i = 0; i < count; i++) {
    ellipse(x, height/2,width/count,width/count);
    x += 2*(width/count)/2;
  }
  
}