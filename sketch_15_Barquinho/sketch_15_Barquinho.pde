PImage barco;
float angulo, barcoX=0;

void setup() {
  size(600, 600);
  barco=loadImage("barquinho.png");
  barco.resize(150, 150);
  imageMode(CENTER);
}

void draw() {
  background(#0077be);
  pushMatrix();
  desenhaBarco();
  popMatrix();
}

void desenhaBarco() {
  angulo = angulo + 0.1;
  barcoX = barcoX + 0.1;
  float barcoY = sin(barcoX); // obtém o deslocamento vertical 
  float c = sin(angulo)/4; // obtém valor de rotação
  translate(barcoX*15, 300 + barcoY*10); // modifica x e y do canvas
  rotate(c); // gira o canvas
  image(barco, 0, 0);
  if (barcoX*15>600+75) { // reseta variáveis
    barcoX=0;
    angulo = PI/3.0;
  }
}
