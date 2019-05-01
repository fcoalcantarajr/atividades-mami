float tAtual = 0.0;
float vAtual = 10.0;
float dAtual;

void setup() {
  size(600, 600);
  background(200);
  mostraMundo();
}

void draw() {
  dAtual = MRU(vAtual, tAtual); // cálculo da distância
  console(tAtual, dAtual); // impressão no console
  circulo(dAtual); // desenho do círculo no canvas
  tAtual++; // passagem do tempo
}

float MRU(float v, float t) { // cálculo da distância da bola.
  float conv_t=t/60;
  float d=v*conv_t;
  return(d);
}

void console(float t, float d) { // impressão no console
    String sconv_t = nf(t/60.0,2,2); // nf utilizado aqui só pra ficar com 2 casas decimais na impressão.
    String sd = nf(d,2,2);
    println("Tempo:", sconv_t,"Distância:", sd);
    println();
}

void circulo(float dist) { // desenho do círculo no canvas a partir da distância.
  fill(0);
  ellipse(dist+5, 300, 5, 5);
}

void mostraMundo() { // desenho da grade de referência - matriz 12x12.
  for (float i=0; i<12; i++) {
    line(i*50, 0, i*50, 600);
    line(0, i*50, 600, i*50);
  }
}
