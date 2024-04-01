void setup() {
  size(800, 600);
  background(255);
  smooth();
  noLoop();
}

void draw() {
  generateArt();
}

void generateArt() {
  int numShapes = 100; // Number of shapes to draw

  for (int i = 0; i < numShapes; i++) {
    int x = (int) random(width); // Random x-coordinate
    int y = (int) random(height); // Random y-coordinate
    int shapeSize = (int) random(20, 100); // Random size for shapes

    // Randomly choose a shape
    int shapeType = (int) random(3);

    if (shapeType == 0) {
      drawEllipse(x, y, shapeSize);
    } else if (shapeType == 1) {
      drawRect(x, y, shapeSize);
    } else {
      drawTriangle(x, y, shapeSize);
    }
  }
}

void drawEllipse(int x, int y, int size) {
  fill(random(255), random(255), random(255), random(200, 255)); // Random fill color with transparency
  ellipse(x, y, size, size);
}

void drawRect(int x, int y, int size) {
  fill(random(255), random(255), random(255), random(200, 255)); // Random fill color with transparency
  rect(x, y, size, size);
}

void drawTriangle(int x, int y, int size) {
  fill(random(255), random(255), random(255), random(200, 255)); // Random fill color with transparency
  float h = sqrt(3) / 2 * size;
  triangle(x, y - h / 2, x - size / 2, y + h / 2, x + size / 2, y + h / 2);
}
