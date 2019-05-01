// d=v*t+a*t*t/2

float tAtual = 0;
float aAtual = -1;
float vAtual_x = 13;
float vAtual_y = 23;
float dAtual_x;
float dAtual_y;

void setup() {
  size(600, 600);
  background(255);
  mostraMundo();
}

void draw() {
  dAtual_x = MRU(vAtual_x, tAtual);
  dAtual_y = MRUV(vAtual_y, aAtual, tAtual);
  console(tAtual, dAtual_x, dAtual_y, aAtual, vAtual_y);
  circulo(dAtual_x, dAtual_y);
  texto_em_tela(tAtual, dAtual_x, dAtual_y, aAtual, vAtual_y);
  tAtual++;
}

float MRU(float v, float t) { // função para cálculo da distância em X
  float conv_t=t/60;
  float d=v*conv_t;
  return(d);
}

float MRUV(float v, float a, float t) { // função para cálculo da distância em Y
  float conv_t=t/60;
  float d=v*conv_t+a*conv_t*conv_t/2.0;
  return(d);
}

void console(float t, float d_x, float d_y, float a, float v_y) { // exibe no console o tempo, a posição em X, a posição e a velocidade em Y. 
  String sconv_t = nf(t/60.0, 2, 2);
  String sd_x= nf(d_x, 2, 2);
  String sd_y= nf(d_y, 2, 2);
  String velocidade=nf((v_y+a*(t/60.0)), 2, 2);
  println("Para X:", sconv_t, sd_x);
  println("Para Y:", sconv_t, sd_y, velocidade);
  println();
}

void texto_em_tela(float t, float d_x, float d_y, float a, float v_y) { // concatena as strings e desenha o texto em tela
  String sconv_t = nf(t/60.0, 2, 2);
  String sd_x= nf(d_x, 2, 2);
  String sd_y= nf(d_y, 2, 2);
  String velocidade=nf((v_y+a*(t/60.0)), 2, 2);
  String o_tempo = "O tempo é: " + sconv_t;
  String para_x = "A posição em X é: " + sd_x;
  String para_y = "A posição em Y é: " + sd_y + ", e a velocidade em Y é: " + velocidade;
  fill(0); 
  rect(0,0,600,50);
  fill(255); // permite apagar o texto anterior
  text(o_tempo, 5, 15);
  text(para_x, 5, 30);
  text(para_y, 5, 45);
}

void circulo(float dist_x, float dist_y) { // desenho do círculo nas posições X e Y no canvas.
  fill(0);
  ellipse(dist_x+10, 600-(dist_y+10), 10, 10);
}

void mostraMundo() {
  for (int i=0; i<12; i++) {
    line(i*50, 0, i*50, 600);
    line(0, i*50, 600, i*50);
  }
}
