// Carregamento OvosNO
PImage OvosNO1, OvosNO2, OvosNO3, OvosNO4, OvosNO5;
void loadOvosNO() {
  OvosNO1=loadImage("Imagens/enemy_nw1.png");
  OvosNO2=loadImage("Imagens/enemy_nw2.png");
  OvosNO3=loadImage("Imagens/enemy_nw3.png");
  OvosNO4=loadImage("Imagens/enemy_nw4.png");
  OvosNO5=loadImage("Imagens/enemy_nw5.png");
}

//Estados possíveis
final int OVOSNO1 = 1;
final int OVOSNO2 = 2;
final int OVOSNO3 = 3;
final int OVOSNO4 = 4;
final int OVOSNO5 = 5;

//Estado e tempo iniciais
int estadoOvosNO = OVOSNO1;
int tempoOvosNO=0;

// Exibição dos ovos
void mostraOvosNO(int estado) {
  if (estado == OVOSNO1) {
    image(OvosNO1, 200, 160); 
  } else if (estado == OVOSNO2) {
    image(OvosNO2, 209, 167);
  } else if (estado == OVOSNO3) {
    image(OvosNO3, 221, 174);
  } else if (estado == OVOSNO4) {
    image(OvosNO4, 231.50, 180.40);
  } else if (estado == OVOSNO5) {
    image(OvosNO5, 240.60, 189);
  }
}

void MEFOvosNO() {
  if(tempoOvosNO/45==1) {
    estadoOvosNO=OVOSNO1;
  } else if(tempoOvosNO/45==2) {
    estadoOvosNO=OVOSNO2;
  } else if(tempoOvosNO/45==3) {
    estadoOvosNO=OVOSNO3;
  } else if(tempoOvosNO/45==4) {
    estadoOvosNO=OVOSNO4;
  } else if(tempoOvosNO/45==5) {
    estadoOvosNO=OVOSNO5;
    tempoOvosNO=0;
  }
}

void ovosNO() {
  tempoOvosNO++;
  mostraOvosNO(estadoOvosNO);
  MEFOvosNO();
}
