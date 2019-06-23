// Todos os estados de Minnie
final int PRESENTE = 1;
final int FORA = 2;
// Carregamento Minnie
PImage Minnie;
// Controles temporais
int tempoMinnie=0;
// Estado inicial
int estadoMinnie = FORA;

void mostraMinnie(int estado) {
  if (estado == PRESENTE) {
    image(Minnie, 215, 107);
  } else if (estado == FORA) {  }
}

void minnieMEF() {
  if (tempoMinnie/60==5) {
    estadoMinnie=PRESENTE;
  } else if (tempoMinnie/60==7) {
    estadoMinnie=FORA;
    tempoMinnie=0;
  }
}
// Deus Minnie() 
void minnie() {
  tempoMinnie++;
  mostraMinnie(estadoMinnie);
  minnieMEF();
}
