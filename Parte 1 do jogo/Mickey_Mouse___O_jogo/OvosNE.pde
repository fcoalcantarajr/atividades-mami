// Carregamento OvosNE
PImage OvosNE1, OvosNE2, OvosNE3, OvosNE4, OvosNE5;
void loadOvosNE() {
  OvosNE1=loadImage("Imagens/enemy_ne1.png");
  OvosNE2=loadImage("Imagens/enemy_ne2.png");
  OvosNE3=loadImage("Imagens/enemy_ne3.png");
  OvosNE4=loadImage("Imagens/enemy_ne4.png");
  OvosNE5=loadImage("Imagens/enemy_ne5.png");
}

//Estados possíveis
final int OVOSNE1 = 1;
final int OVOSNE2 = 2;
final int OVOSNE3 = 3;
final int OVOSNE4 = 4;
final int OVOSNE5 = 5;

//Estado e tempo iniciais
int estadoOvosNE = OVOSNE1;
int tempoOvosNE=0;

// Exibição dos ovos
void mostraOvosNE(int estado) {
  if (estado == OVOSNE1) {
    image(OvosNO1, 447.07, 159.73); 
  } else if (estado == OVOSNE2) {
    image(OvosNO2, 437, 166);
  } else if (estado == OVOSNE3) {
    image(OvosNO3, 425, 172.80);
  } else if (estado == OVOSNE4) {
    image(OvosNO4, 414, 179);
  } else if (estado == OVOSNE5) {
    image(OvosNO5, 406, 188);
  }
}

void MEFOvosNE() {
  if(tempoOvosNE/45==1) {
    estadoOvosNE=OVOSNE1;
  } else if(tempoOvosNE/45==2) {
    estadoOvosNE=OVOSNE2;
  } else if(tempoOvosNE/45==3) {
    estadoOvosNE=OVOSNE3;
  } else if(tempoOvosNE/45==4) {
    estadoOvosNE=OVOSNE4;
  } else if(tempoOvosNE/45==5) {
    estadoOvosNE=OVOSNE5;
    tempoOvosNE=0;
  }
}

void ovosNE() {
  tempoOvosNE++;
  mostraOvosNE(estadoOvosNE);
  MEFOvosNE();
}
