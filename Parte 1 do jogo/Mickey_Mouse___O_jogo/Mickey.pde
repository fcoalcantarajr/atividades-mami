// Carregamento Mickey
PImage MickeyLeste, MickeyOeste;

// Todos os estados de Mickey
final int OESTE = 1;
final int LESTE = 2;

// Estado inicial
int estadoMickey = OESTE;

void mostraMickey(int estado) {
  if (estado == OESTE) {
    image(MickeyOeste, 275.71, 180.38);
  } else if (estado == LESTE) {
    image(MickeyLeste, 316, 186);
  }
}

// Controle do Mickey
void mickeyMEF() {
  if (keyPressed == true) {
    if (keyCode == RIGHT) {
      estadoMickey = LESTE;
    } else if (keyCode == LEFT) {
      estadoMickey = OESTE;
    }
  }
}
// Deus em Mickey
void mickey() {
  mostraMickey(estadoMickey);
  mickeyMEF();
}
