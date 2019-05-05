final int EXECUTANDO = 1;
final int GANHOU = 2;
final int PERDEU = 3;
// Estado inicial
int estadoJogo=EXECUTANDO;
int tempoTransicao=0;

void exibirJogo(int estado) {
  if (estado==EXECUTANDO) {
    executar();
  } else if (estado==GANHOU) {
    ganhou();
  } else if (estado==PERDEU) {
    perdeu();
  }
}

void MEFJogo() {
  if (!(erros==3 || pontos==50)) {
    estadoJogo=EXECUTANDO;
  } else if (erros==3) {
    tempoTransicao++;
    if (tempoTransicao==60) {
      estadoJogo=PERDEU;
    }
  } else if (pontos==50) {
    tempoTransicao++;
    if (tempoTransicao==60) {
      estadoJogo=GANHOU;
    }
  }
}

void controle() {
  exibirJogo(estadoJogo);
  MEFJogo();
}

void executar() {
  image(Fundo, 0, 0);
  mickey();
  minnie();
  cesta();
  execucao();
  miss();
  pontos();
  acertos();
  erros();
  pintinhos();
}

void ganhou() {
  background(255);
  String textofinal = "VOCÊ VENCEU!";
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(80);
  text(textofinal, width/2, height/2);
}

void perdeu() {
  background(255);
  String textofinal = "VOCÊ PERDEU!";
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(80);
  text(textofinal, width/2, height/2);
}
