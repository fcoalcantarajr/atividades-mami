// Carregamento Miss
PImage [] miss = new PImage[3];
void loadMiss() {
  for (int i = 0; i < miss.length; i++) {
    miss[i] = loadImage("Imagens/miss_"+i+".png");
  }
}

// Estados possíveis
final int MISS0 = 0;
final int MISS1 = 1;
final int MISS2 = 2;
final int MISS3 = 3;

// Estado e tempo iniciais;
int estadoMiss = MISS0;
int tempoMiss=0;

// Exibição das imagens
void mostraMiss(int estado) {
  if (estado == MISS0) {}
  else if (estado == MISS1) {
    image(miss[0], 355, 138);
  } else if (estado == MISS2) {
    image(miss[0], 355, 138);
    image(miss[1], 355, 150);
  } else if (estado == MISS3) {
    image(miss[0], 355, 138);
    image(miss[1], 355, 150);
    image(miss[2], 330, 150);
  }
}

void MEFMiss() {
  if(erros==1) {
    estadoMiss=MISS1;
  } else if(erros==2) {
    estadoMiss=MISS2;
  } else if(erros==3) {
    estadoMiss=MISS3;
  }
}

void miss() {
  mostraMiss(estadoMiss);
  MEFMiss();
}
