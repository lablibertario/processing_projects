void setup() {
  size(1000,812);
  strokeWeight(3);
}

void draw() {
  background(255,255,255);
  rect(-3, -3, mouseX*0.11, mouseY*0.27);
  rect(-3, mouseY*0.26, mouseX*0.11, mouseY*0.57);
  rect(-3, mouseY*0.26 + mouseY*0.57, mouseX*0.11, 60);
  rect(mouseX*0.1, -3, mouseX*0.19, mouseY*0.23);
  fill(244, 220, 66);
  rect(mouseX*0.1, mouseY*0.22, mouseX*0.19, mouseY*0.79);
  fill(255,255,255);
  rect(mouseX*0.29, -3, mouseX*0.59, mouseY*0.27);
  rect(mouseX*0.29, mouseY*0.26, mouseX*0.125, mouseY*0.46);
  fill(0, 49, 173);
  rect(mouseX*0.29, mouseY*0.72, mouseX*0.125, mouseY*0.12);
  fill(255, 255, 255);
  rect(mouseX*0.29, mouseY*0.83, mouseX*0.125, mouseY*0.23);
  fill(244, 220, 66);
  rect(mouseX*0.4, mouseY*0.26, mouseX*0.48, mouseY*0.46);
  fill(255, 255, 255);
  rect(mouseX*0.4, mouseY*0.72, mouseX*0.6, mouseY*0.35);
  fill(242,7,7);
  rect(mouseX*0.875, -3,mouseX*0.125, mouseY*0.17);
  fill(255, 255, 255);
  rect(mouseX*0.875, mouseY*0.14, mouseX*0.125, mouseY*0.12);
  rect(mouseX*0.875, mouseY*0.26, mouseX*0.125, mouseY*0.46);
}