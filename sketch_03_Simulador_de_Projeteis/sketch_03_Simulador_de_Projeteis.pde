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
  //  frameRate(1);
}

void draw() {
//  background(255);
  mostraMundo();
  dAtual_x = MRU(vAtual_x, tAtual);
  dAtual_y = MRUV(vAtual_y, aAtual, tAtual);
  console(tAtual, dAtual_x, dAtual_y, aAtual, vAtual_y);
  circulo(dAtual_x, dAtual_y);
  tAtual++;
}

float MRU(float v, float t) {
  if (t%60==0) {
    float conv_t=t/60;
    float d=v*conv_t;
    return(d);
  } else {
    return 100000;
  }
}

float MRUV(float v, float a, float t) {
  if (t%60==0) {
    float conv_t=t/60;
    float d=v*conv_t+a*conv_t*conv_t/2.0;
    return(d);
  } else {
    return 100000;
  }
}

void console(float t, float d_x, float d_y, float a, float v_y) {
  if (t%60==0) {
    println("Para X:", t/60.0, d_x);
    println("Para Y:", t/60.0, d_y, v_y+a*(t/60.0));
    String para_x = "Para X, o tempo é: " + t/60.0 +", e a posição em X é: " + d_x;
    String para_y = "Para Y, o tempo é: " + t/60.0 +", a posição em Y é: " + d_y + ", e a velocidade em Y é: " + (v_y+a*(t/60.0));
    fill(0);
    background(255);
    text(para_x, 0, 30);
    text(para_y, 0, 45);
  }
}

void circulo(float dist_x, float dist_y) {
    fill(0);
    ellipse(dist_x+10, 600-(dist_y+10), 10, 10);
}

void mostraMundo() {
  for (int i=0; i<12; i++) {
    line(i*50, 0, i*50, 600);
    line(0, i*50, 600, i*50);
  }
}
