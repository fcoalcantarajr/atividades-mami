float tan; // variável da tangente
float angulo; // ângulo do arco tangente

// variáveis de posicionamento - vão receber X e Y do mouse subtraídos da metade da tela
float ca;
float co;

void setup() {
  size(600, 600);
}

void draw() {
  background(200);
  ca = (mouseX - (width / 2));
  co = (mouseY - (height / 2));
  tan = co / ca;
  angulo = atan(tan);
  // ajuste de quadrantes - atan() pode mostrar resultados negativos
  if (ca < 0) {
    angulo = angulo + radians(180);
  } 
  if (co < 0) {
    angulo = angulo + radians(360);
  }
  globo_ocular();
  pupila(angulo);
}
// globo ocular - o círculo branco
void globo_ocular() {
  fill(255);
  ellipse((width / 2), (height / 2), (width / 2), (height / 2));
}

// pupila - o círculo preto
void pupila(float ang) {
  fill(0);
  // subtraio 40 do raio por ser a metade do diâmetro da pupila - evita saltos quando entrar ou sair do globo ocular
  if (dist2D((width / 2), mouseX, (height / 2), mouseY) <= (width / 4) - 40) {
    // se a distância tiver dentro do raio do globo ocular, desenha a elipse dentro do globo, usando mouseX e mouseY
    ellipse(mouseX, mouseY, 80, 80);
  } else {
    // se não, desenho a elipse dentro do globo, usando as coordenadas polares do ângulo recebido e o raio
    // aqui eu também subtraio 40, pelos mesmos motivos
    ellipse(coordPolarX((width / 4) - 40, ang) + (width / 2), coordPolarY((width / 4) - 40, ang) + (height / 2), 80, 80);
    //ellipse((raioX, anguloX), (raioY, anguloY))
  }
}

// funções de distância 1D e 2D - a 2D depende da 1D
float dist1D(float a, float b) {
  return abs(b - a);
}
float dist2D(float x1, float x2, float y1, float y2) {
  return sqrt((dist1D(x1, x2) * dist1D(x1, x2)) + (dist1D(y1, y2) * dist1D(y1, y2)));
}

// funções de coordenadas polares para X e Y
float coordPolarX(float raio, float angulo) {
  return raio * cos(angulo);
}
float coordPolarY(float raio, float angulo) {
  return raio * sin(angulo);
}
