void setup() {
   size(1000, 1000);
   int[] center = calcCenter();
   drawCircle(center);
}

int circleCount = 50;
float radius = 200.0;
float steps = calcSteps();

void drawCircle(int[] center) {
  for(int i = 0; i <= circleCount; i++) {
    ellipse(radius*cos(i*steps) + center[0], radius*sin(i*steps) + center[1], radius*sin(steps), radius*sin(steps));
  }
}

int[] calcCenter() {
  int[] center = new int[2];
  center[0] = width/2;
  center[1] = height/2;
  return center;
}

float calcSteps() {
  return (float)TWO_PI / circleCount;
}