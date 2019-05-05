// Carregamento pontos 0-4 e 5-9
PImage [] ponto = new PImage[10];
void loadPontos() {
  for (int i = 0; i<ponto.length; i++) {
    ponto[i]=loadImage("Imagens/panel_number_"+i+".png");
  }
}

int valorDezena=0;
void mostraDezena() {
  int valorDezena=int(pontos/10);
  if(valorDezena==0) { 
  } else {
  image(ponto[valorDezena], 380, 111);
  }
}

void mostraUnidade() {
  if (pontos>=10) {
    int valorUnidade=pontos-((pontos/10)*10);
    image(ponto[valorUnidade], 403, 111);
  } else {
    image(ponto[pontos], 403, 111);
  }
}

void pontos() {
  mostraDezena();
  mostraUnidade();
}
