// Carregamento OvosSE
PImage OvosSE1, OvosSE2, OvosSE3, OvosSE4, OvosSE5;
void loadOvosSE() {
  OvosSE1=loadImage("Imagens/enemy_se1.png");
  OvosSE2=loadImage("Imagens/enemy_se2.png");
  OvosSE3=loadImage("Imagens/enemy_se3.png");
  OvosSE4=loadImage("Imagens/enemy_se4.png");
  OvosSE5=loadImage("Imagens/enemy_se5.png");
}

//Estados possíveis
final int OVOSSE1 = 1;
final int OVOSSE2 = 2;
final int OVOSSE3 = 3;
final int OVOSSE4 = 4;
final int OVOSSE5 = 5;

//Estado e tempo iniciais
int estadoOvosSE = OVOSSE1;
int tempoOvosSE=0;

// Exibição dos ovos
void mostraOvosSE(int estado) {
  if (estado == OVOSSE1) {
    image(OvosNO1, 445.58, 206.52); 
  } else if (estado == OVOSSE2) {
    image(OvosNO2, 434, 212);
  } else if (estado == OVOSSE3) {
    image(OvosNO3, 425, 217);
  } else if (estado == OVOSSE4) {
    image(OvosNO4, 413.80, 225);
  } else if (estado == OVOSSE5) {
    image(OvosNO5, 404.80, 234);
  }
}

void MEFOvosSE() {
  if(tempoOvosSE/45==1) {
    estadoOvosSE=OVOSSE1;
  } else if(tempoOvosSE/45==2) {
    estadoOvosSE=OVOSSE2;
  } else if(tempoOvosSE/45==3) {
    estadoOvosSE=OVOSSE3;
  } else if(tempoOvosSE/45==4) {
    estadoOvosSE=OVOSSE4;
  } else if(tempoOvosSE/45==5) {
    estadoOvosSE=OVOSSE5;
    tempoOvosSE=0;
  }
}

void ovosSE() {
  tempoOvosSE++;
  mostraOvosSE(estadoOvosSE);
  MEFOvosSE();
}
