// Carregamento Cesta
PImage CestaSO, CestaSE, CestaNO, CestaNE;
void loadCesta() {
  CestaSO = loadImage("Imagens/hero_sw.png");
  CestaSE = loadImage("Imagens/hero_se.png");
  CestaNO = loadImage("Imagens/hero_nw.png");
  CestaNE = loadImage("Imagens/hero_ne.png");
}

// Estados possíveis
final int SUDOESTE = 1;
final int NOROESTE = 2;
final int SUDESTE = 3;
final int NORDESTE = 4;

// Estado inicial
int estadoCesta = SUDOESTE;

void mostraCesta(int estado) {
  if (estado == SUDOESTE) {
    image(CestaSO, 243, 230);
  } else if (estado == NOROESTE) {
    image(CestaNO, 246, 178);
  } else if (estado==NORDESTE) {
    image(CestaNE, 372, 186);
  } else if (estado==SUDESTE) {
    image(CestaSE, 364, 230);
  }
}

void cestaMEF() {
  if (keyPressed == true) {
    if (keyCode == UP) {
      if (estadoCesta==SUDESTE) {
        estadoCesta=NORDESTE;
      } else if (estadoCesta==SUDOESTE) {
        estadoCesta=NOROESTE;
      }
    } else if (keyCode == DOWN) {
      if (estadoCesta == NORDESTE) {
        estadoCesta = SUDESTE;
      } else if (estadoCesta == NOROESTE) {
        estadoCesta = SUDOESTE;
      }
    } else if (keyCode == RIGHT) {
      if (estadoCesta == NOROESTE) {
        estadoCesta = NORDESTE;
      } else if (estadoCesta == SUDOESTE) {
        estadoCesta = SUDESTE;
      }
    } else if (keyCode == LEFT) {
      if (estadoCesta == NORDESTE) {
        estadoCesta = NOROESTE;
      } else if (estadoCesta == SUDESTE) {
        estadoCesta = SUDOESTE;
      }
    }
  }
}

void cesta() {
  mostraCesta(estadoCesta);
  cestaMEF();
}
