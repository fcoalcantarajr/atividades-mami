// Estados possíveis
final int PARADO = 0;
final int MARTELANDO = 1;
final int PULANDO = 2;
// estado, tempo e posições iniciais
int estadoMario = PARADO;
int tempo=0;
int posY = 300;

// carregamento das imagens
PImage imgMartelando, imgParado, imgPulando;
void setup() {
  size(600, 600);
  imgMartelando = loadImage("martelando.png");
  imgParado = loadImage("parado.png");
  imgPulando = loadImage("pulando.png");
}

void draw() {
  mostraMario(estadoMario);
  MEFMario_Interativo();
  MEFMario_Tempo();
  tempo++;
}

void mostraMario(int estado) {
  background(255);
  if (estado == PARADO) {
    imageMode(CENTER);
    image(imgParado, 300, 300);
  } else if (estado == MARTELANDO) {
    imageMode(CENTER);
    image(imgMartelando, 300, 300);
  } else if (estado == PULANDO) {
    imageMode(CENTER);
    image(imgPulando, 300, posY);
  }
}

void MEFMario_Interativo() {
  if (keyPressed == true) {
    if (keyCode == UP) {
      estadoMario = PULANDO;
    } else if (key==' ') {
      estadoMario = MARTELANDO;
    }
  }
}

void MEFMario_Tempo() {
  if(estadoMario == PULANDO && tempo>30) {
    estadoMario = PARADO;
    tempo=0;
    tempo++;
  } else if (estadoMario == MARTELANDO && tempo>60) {
    estadoMario = PARADO;
    tempo=0;
    tempo++;
  }
}
