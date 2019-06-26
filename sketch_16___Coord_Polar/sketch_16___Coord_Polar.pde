float r = 100; 
float ang = 320;
float giro, x, y;

void setup() {
  size(600, 450);
}

void draw() {
  background(200);
  espiral();
}

void espiral() {
  translate((width / 2), (height / 2));
  rotate(giro);
  for (int i = 0; i < 1500; i++) {
    float tamanho = radians(i);
    x = polarX(100, 0.25, tamanho);
    y = polarY(100, 0.25, tamanho);
    noStroke();
    fill(0);
    ellipse((x * 0.7), (y * 0.7), 7, 7);
  }
  giro -= 0.05;
}

float polarX(float r, float ang, float tamanho) {
  return ang * tamanho * r * cos(tamanho);
}

float polarY(float r, float ang, float tamanho) {
  return ang * tamanho * r * sin(tamanho);
}
