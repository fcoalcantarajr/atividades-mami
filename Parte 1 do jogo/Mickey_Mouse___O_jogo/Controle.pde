final int EXECUTANDO = 1;
final int TERMINOU = 2;
// Estado inicial
int estadoJogo=EXECUTANDO;
int tempoTransicao=0;

void exibirJogo(int estado) {
  if (estado==EXECUTANDO) {
    executar();
  } else if (estado==TERMINOU) {
    terminou();
  }
}

void MEFJogo() {
  if (!(erros==3 || pontos==50)) {
    estadoJogo=EXECUTANDO;
  } else {
    tempoTransicao++;
    if (tempoTransicao==60) {
      estadoJogo=TERMINOU;
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

void terminou() {
  background(255);
  String textofinal = "FIM DE JOGO";
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(80);
  text(textofinal, width/2, height/2);
}
