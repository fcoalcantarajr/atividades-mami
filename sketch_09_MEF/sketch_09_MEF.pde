// Estados possíveis
final int PARADO = 0;
final int PARA_ESQ = 1;
final int PARA_DIR = 2;
// Posição X inicial do personagem, também conhecida como a variável de controle para mudança de direção do sprite
int posX = 300;

// Estado inicial
int estadoPersonagem = PARADO;

// carregamento das imagens
PImage imgParado, imgEsq, imgDir;
void setup() {
  size(600, 600);
  imgParado = loadImage("SprSup.png");
  imgDir = loadImage("SprEsq.png");
  imgEsq = loadImage("SprDir.png");
}

void draw() { // chamada das funções
  background(200);
  mostraPersonagem(estadoPersonagem);
  MEF();
}

void mostraPersonagem(int estado) { // definição das posições das imagens e carregamento no canvas
  background(255);
  if (estado == PARADO) {
    imageMode(CENTER);
    image(imgParado, 300, 300);
  } else if (estado == PARA_ESQ) {
    imageMode(CENTER);
    image(imgEsq, posX, 300);
  } else if (estado == PARA_DIR) {
    imageMode(CENTER);
    image(imgDir, posX, 300);
  }
}

void MEF() { // máquina de estados
  if (keyPressed == true) {
    if(keyCode == RIGHT) {
      estadoPersonagem = PARA_DIR;
      posX = posX+7;
    } else if (keyCode == LEFT) {
      estadoPersonagem = PARA_ESQ;
      posX = posX-7;
    }
  }
}
    
    
