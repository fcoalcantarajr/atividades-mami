// Carregamento OvosSO
PImage OvosSO1, OvosSO2, OvosSO3, OvosSO4, OvosSO5;
void loadOvosSO() {
  OvosSO1=loadImage("Imagens/enemy_sw1.png");
  OvosSO2=loadImage("Imagens/enemy_sw2.png");
  OvosSO3=loadImage("Imagens/enemy_sw3.png");
  OvosSO4=loadImage("Imagens/enemy_sw4.png");
  OvosSO5=loadImage("Imagens/enemy_sw5.png");
}

//Estados possíveis
final int OVOSSO1 = 1;
final int OVOSSO2 = 2;
final int OVOSSO3 = 3;
final int OVOSSO4 = 4;
final int OVOSSO5 = 5;

//Estado e tempo iniciais
int estadoOvosSO = OVOSSO1;
int tempoOvosSO=0;

// Exibição dos ovos
void mostraOvosSO(int estado) {
  if (estado == OVOSSO1) {
    image(OvosSO1, 198.80, 205.72); 
  } else if (estado == OVOSSO2) {
    image(OvosSO2, 209, 212);
  } else if (estado == OVOSSO3) {
    image(OvosSO3, 219.28, 217.80);
  } else if (estado == OVOSSO4) {
    image(OvosSO4, 231, 224);
  } else if (estado == OVOSSO5) {
    image(OvosSO5, 240.40, 233.20);
  }
}

void MEFOvosSO() {
  if(tempoOvosSO/45==1) {
    estadoOvosSO=OVOSSO1;
  } else if(tempoOvosSO/45==2) {
    estadoOvosSO=OVOSSO2;
  } else if(tempoOvosSO/45==3) {
    estadoOvosSO=OVOSSO3;
  } else if(tempoOvosSO/45==4) {
    estadoOvosSO=OVOSSO4;
  } else if(tempoOvosSO/45==5) {
    estadoOvosSO=OVOSSO5;
    tempoOvosSO=0;
  }
}

void ovosSO() {
  tempoOvosSO++;
  mostraOvosSO(estadoOvosSO);
  MEFOvosSO();
}
