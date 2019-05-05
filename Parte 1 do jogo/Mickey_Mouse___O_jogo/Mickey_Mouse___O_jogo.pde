// Carregamento Fundo
PImage Fundo;

void setup() {
  size(654,396);
  //Exibição do fundo
  Fundo=loadImage("Imagens/background.png");
  MickeyLeste=loadImage("Imagens/hero_e.png");
  MickeyOeste=loadImage("Imagens/hero_w.png");
  Minnie=loadImage("Imagens/minnie.png");
  // Puxando de outras abas;
  loadCesta();
  loadOvosNO();
  loadOvosNE();
  loadOvosSO();
  loadOvosSE();
  loadMiss();
  loadPintinhoLeste();
  loadPintinhoOeste();
  loadPontos();
}

void draw() {
  controle();
}
