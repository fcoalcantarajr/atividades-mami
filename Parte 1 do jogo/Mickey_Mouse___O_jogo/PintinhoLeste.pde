// Carregamento Pintinho Nascendo Leste
PImage [] pintinhoL = new PImage[6];
void loadPintinhoLeste() {
  for (int i = 1; i<=pintinhoL.length; i++) {
    pintinhoL[i-1]=loadImage("Imagens/miss_e"+i+".png");
  }
}

// Estados possíveis
int[] POSICAOL = new int[6]; 
{
  for (int i = 0; i<POSICAOL.length; i++) {
    POSICAOL[i]=i;
  }
}

// Estado e tempo inicial
int estadoPintinhoL = POSICAOL[0];
int tempoPintinhoL=0;

// Exibição das imagens
void mostraPintinhoL(int estado) {
  if (estado == POSICAOL[0]) {
    image(pintinhoL[0], 383, 269);
  } else if (estado == POSICAOL[1]) {
    image(pintinhoL[1], 372, 271);
  } else if (estado == POSICAOL[2]) {
    image(pintinhoL[2], 408.58, 245.33);
  } else if (estado == POSICAOL[3]) {
    image(pintinhoL[3], 427.67, 259);
  } else if (estado == POSICAOL[4]) {
    image(pintinhoL[4], 442.67, 259);
  } else if (estado == POSICAOL[5]) {
    image(pintinhoL[5], 458.33, 257.67);
  }
}

void MEFPintinhoL() {
  for (int i=1; i<=POSICAOL.length+1; i++) {
    if (tempoPintinhoL/30==i) {
      estadoPintinhoL=POSICAOL[i-1];
    }
  }
  if(tempoPintinhoL/30==6) {
    tempoPintinhoL=0;
  }
}

void pintinhoL() {
  tempoPintinhoL++;
  mostraPintinhoL(estadoPintinhoL);
  MEFPintinhoL();
}
