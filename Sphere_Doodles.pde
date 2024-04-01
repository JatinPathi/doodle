int numCircles = 300;
int minRadius = 5;
int maxRadius = 50;
color[] cityLightColors = {color(255, 255, 200, 100), color(255, 255, 150, 100), color(255, 255, 100, 100), color(255, 255, 50, 100), color(255, 255, 0, 100), color(255, 200, 0, 100), color(255, 150, 0, 100), color(255, 100, 0, 100), color(255, 50, 0, 100)};

void setup() {
  size(800, 800);
  background(0);
  noStroke();
  drawCircles();
}

void drawCircles() {
  for (int i = 0; i < numCircles; i++) {
    int x = (int) random(width);
    int y = (int) random(height);
    int radius = (int) random(minRadius, maxRadius);
    color c = cityLightColors[(int) random(cityLightColors.length)];
    fill(c);
    ellipse(x, y, radius, radius);
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    save("city_lights_art.png");
  }
}
