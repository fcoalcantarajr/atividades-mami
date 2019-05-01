void setup() {
  size(800, 600);
}

void draw() {
  background(200);
  o_programa(width,height,mouseX,mouseY);
}

void o_programa(float x, float y, float x1, float y1) {
  rectMode(CENTER);
  float largura=x/2;
  float altura=largura*9/16;
  rect(x/2, y/2, largura, altura);
  float novo_x = map(x1, 0, x, x/4+25, 3*x/4-25);
  float novo_y = map(y1, 0, y, (y/2 - altura/2)+25, (y/2 + altura/2)-25);
  ellipse(novo_x, novo_y, 50, 50);
}
