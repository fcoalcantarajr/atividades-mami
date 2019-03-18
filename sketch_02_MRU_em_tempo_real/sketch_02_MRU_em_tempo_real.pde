float tAtual = 0.0;
float vAtual = 10.0;
float dAtual;

void setup() {
  size(600,600);
//  frameRate(1);
  mostraMundo();
}

void draw() {
  dAtual = MRU(vAtual, tAtual);
  console(tAtual, dAtual);
  circulo(dAtual);
  tAtual++;
}

float MRU(float v, float t) { // impressão no canvas
  float d=0, conv_t=0;
  if(t%60==0) {
    conv_t=t/60;
    d=v*conv_t;
  }
  return(d);
}

void console(float t, float d) { // impressão no console
  if(t%60==0) {
      println(t/60, d);
  }
}

//float MRU(float v, float t) {
//  float d;
//  d=v*t;
//  return(d);
//}

void circulo(float dist) {
  fill(0);
  ellipse(dist+5, 300, 5, 5);
}

void mostraMundo() {
  for (float i=0; i<12; i++) {
    line(i*50, 0, i*50,600);
    line(0, i*50, 600, i*50);
  }
}
