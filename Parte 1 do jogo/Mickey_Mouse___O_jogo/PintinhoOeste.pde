// Carregamento Pintinho Nascendo Leste
PImage [] pintinhoO = new PImage[6];
void loadPintinhoOeste() {
  for (int i = 1; i<=pintinhoO.length; i++) {
    pintinhoO[i-1]=loadImage("Imagens/miss_w"+i+".png");
  }
}

// Estados possíveis
int[] POSICAOO = new int[6]; 
{
  for (int i = 0; i<POSICAOO.length; i++) {
    POSICAOO[i]=i;
  }
}

// Estado e tempo inicial
int estadoPintinhoO = POSICAOO[0];
int tempoPintinhoO=0;

// Exibição das imagens
void mostraPintinhoO(int estado) {
  if (estado == POSICAOO[0]) {
    image(pintinhoO[0], 242, 269);
  } else if (estado == POSICAOO[1]) {
    image(pintinhoO[1], 232, 274);
  } else if (estado == POSICAOO[2]) {
    image(pintinhoO[2], 224, 243);
  } else if (estado == POSICAOO[3]) {
    image(pintinhoO[3], 212, 259);
  } else if (estado == POSICAOO[4]) {
    image(pintinhoO[4], 195, 259);
  } else if (estado == POSICAOO[5]) {
    image(pintinhoO[5], 176.67, 260.87);
  }
}

void MEFPintinhoO() {
  for (int i=1; i<=POSICAOO.length+1; i++) {
    if (tempoPintinhoO/30==i) {
      estadoPintinhoO=POSICAOO[i-1];
    }
  }
  if(tempoPintinhoO/30==6) {
    tempoPintinhoO=0;
  }
}

void pintinhoO() {
  tempoPintinhoO++;
  mostraPintinhoO(estadoPintinhoO);
  MEFPintinhoO();
}
