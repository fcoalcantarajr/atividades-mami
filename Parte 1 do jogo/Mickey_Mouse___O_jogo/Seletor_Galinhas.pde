// Estados possíveis de seleção
final int SELETORNO=1;
final int SELETORNE=2;
final int SELETORSO=3;
final int SELETORSE=4;
// Estado inicial no easy
int estadoSeletorFacil=int(random(1, 5));
// Estado inicial após 5 pontos
int estadoSeletorMedio_1=int(random(1, 5));
int estadoSeletorMedio_2=int(random(1, 5));
// Estado inicial após 15 pontos
int estadoSeletorDificil_1=int(random(1, 5));
int estadoSeletorDificil_2=int(random(1, 5));
int estadoSeletorDificil_3=int(random(1, 5));

// Temporizadores
int tempoSeletorFacil=0;
int tempoSeletorMedio_1=0;
int tempoSeletorMedio_2=0;
int tempoMudancaMaquina_Medio=0;

void seletorGalinhasFacil(int seletor) {
  if (seletor==SELETORNO) {
    ovosNO();
  } else if (seletor==SELETORNE) {
    ovosNE();
  } else if (seletor==SELETORSO) {
    ovosSO();
  } else if (seletor==SELETORSE) {
    ovosSE();
  }
  tempoSeletorFacil++;
  if (tempoSeletorFacil==270) {
    estadoSeletorFacil=int(random(1, 5));
    tempoSeletorFacil=0;
  }
}

void execucao() {
    seletorGalinhasFacil(estadoSeletorFacil);
}
