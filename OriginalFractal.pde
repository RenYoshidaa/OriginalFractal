void setup() {
  size(600, 600);
  background(0);
  strokeWeight(2);
  translate(width/2, height/2);
 
  starFractal(120, 4);
}

void starFractal(float len, int level) {
  if (level == 0) return;

  stroke(50 + level*40, 150, 255);

  int branches = 8;   

  for (int i = 0; i < branches; i++) {
    line(0, 0, len, 0);
    
    pushMatrix();
    translate(len, 0);
    rotate(radians(360/branches));
    starFractal(len * 0.5, level - 1);
    popMatrix();

    rotate(radians(360/branches));
  }
}

