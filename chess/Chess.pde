void setup() {
  size(500,500);
  drawGrid(9);
}

int[][] colors = {{0,255},{255,0}};
int z = 0;

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
    
    z = (a % 2 == 0) ? 0:1;
    if(b % 2 == 0) {
      fill(colors[z][0],colors[z][0],colors[z][0]);
    } else {
      fill(colors[z][1],colors[z][1],colors[z][1]);
    }
    
    rect(b*w,a*w,w,w);
  }
}