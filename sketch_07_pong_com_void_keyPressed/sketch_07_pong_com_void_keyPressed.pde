int bastaoY=0; // interação
int bolaX = 10; // oscilação
int bolaY = 10;
int dX = 5; // variação em X
int dY = 3; // variação em Y

void interacao_bastao() { // interação de bastão à direita
  rect(570, bastaoY, 20, 100);
  //if (keyPressed == true) {
  //  if (keyCode == DOWN) {
  //    bastaoY = bastaoY + 7;
  //  } else if (keyCode == UP) {
  //    bastaoY = bastaoY - 7;
  //  }
  //}
  if (bastaoY >=500) {
    bastaoY = 500;
  }
  if (bastaoY <=0) {
    bastaoY = 0;
  }
}

void oscilacao_bola() {
  ellipse(bolaX, bolaY, 20, 20);
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;
  if (bolaX <= 10) {
    dX = -dX;
  }
  if ((bolaY <= 10) || (bolaY >= 590)) {
    dY = -dY;
  }
  if (bolaY >= bastaoY && bolaY <= bastaoY + 100) {
    if (bolaX > 560 && bolaX<580) {
      dX=-dX;
    }
  }
}

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  interacao_bastao();
  oscilacao_bola();
}

void keyPressed() {
  if (keyCode == DOWN) {
    bastaoY = bastaoY + 7;
  } else if (keyCode == UP) {
    bastaoY = bastaoY - 7;
  }
}
