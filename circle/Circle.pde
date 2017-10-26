void setup() {
   size(500, 500);
   drawCircle();
}

int circleCount = 30;
float radius = 200.0;
float steps = calcSteps();

void drawCircle() {
  for(int i = 0; i <= circleCount; i++) {
    ellipse(radius*cos(i*steps) + width/2, radius*sin(i*steps) + height/2, (TWO_PI*radius)/circleCount, (TWO_PI*radius)/circleCount);
  }
}

float calcSteps() {
  return (float)TWO_PI / circleCount;
}