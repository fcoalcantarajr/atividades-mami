int pontos=0;
int tempoAcertos=0;
boolean contouAcertos=false;
int tempoErrosNE=0;
int tempoErrosNO=0;
int tempoErrosSE=0;
int tempoErrosSO=0;
boolean contouErrosNE=false;
boolean contouErrosNO=false;
boolean contouErrosSE=false;
boolean contouErrosSO=false;
int erros=0;
int errosNE=0;
int errosNO=0;
int errosSE=0;
int errosSO=0;
int tempoPintinhos=0;
boolean pintinhoLeste=false;
boolean pintinhoOeste=false;

void acertos() {
  if (estadoCesta == NORDESTE && estadoOvosNE==OVOSNE5 && tempoOvosNE!=0 && contouAcertos==false) {
    contouAcertos=true;
    pontos++;
  } else if (estadoCesta == NOROESTE && estadoOvosNO==OVOSNO5 && tempoOvosNO!=0 && contouAcertos==false) {
    contouAcertos=true;
    pontos++;
  } else if (estadoCesta == SUDESTE && estadoOvosSE==OVOSSE5 && tempoOvosSE!=0 && contouAcertos==false) {
    contouAcertos=true;
    pontos++;
  } else if (estadoCesta == SUDOESTE && estadoOvosSO==OVOSSO5 && tempoOvosSO!=0 && contouAcertos==false) {
    contouAcertos=true;
    pontos++;
  }
  if (contouAcertos) {
    tempoAcertos++;
  }
  if (tempoAcertos>=45) {
    tempoAcertos=0;
    contouAcertos=false;
  }
}

void erros() {
  if (estadoCesta!= NORDESTE && estadoOvosNE==OVOSNE5 && tempoErrosNE==0 && contouErrosNE==false) {
    contouErrosNE=true;
    pintinhoLeste=true;
    errosNE++;
  } 
  if (estadoCesta != NOROESTE && estadoOvosNO==OVOSNO5 && tempoErrosNO==0 && contouErrosNO==false) {
    contouErrosNO=true;
    pintinhoOeste=true;
    errosNO++;
  } 
  if (estadoCesta != SUDESTE && estadoOvosSE==OVOSSE5 && tempoErrosSE==0 && contouErrosSE==false) {
    contouErrosSE=true;
    pintinhoLeste=true;
    errosSE++;
  } 
  if (estadoCesta != SUDOESTE && estadoOvosSO==OVOSSO5 && tempoErrosSO==0 && contouErrosSO==false) {
    contouErrosSO=true;
    pintinhoOeste=true;
    errosSO++;
  }
  if (contouErrosNE) {
    tempoErrosNE++;
  }
  else if (contouErrosNO) {
    tempoErrosNO++;
  }
  else if (contouErrosSE) {
    tempoErrosSE++;
  }
  else if (contouErrosSO) {
    tempoErrosSO++;
  }
  if (tempoErrosNE>=45) {
    tempoErrosNE=0;
    contouErrosNE=false;
  } else if (tempoErrosNO>=45) {
    tempoErrosNO=0;
    contouErrosNO=false;
  } else if (tempoErrosSO>=45) {
    tempoErrosSO=0;
    contouErrosSO=false;
  } else if (tempoErrosSE>=45) {
    tempoErrosSE=0;
    contouErrosSE=false;
  }
  erros=errosSO+errosSE+errosNE+errosNO;
}

void pintinhos() {
  if (pintinhoLeste) {
    tempoPintinhos++;
    pintinhoL();
    if (tempoPintinhos/30>=6) {
      pintinhoLeste=false;
      tempoPintinhos=0;
    }
  } else if (pintinhoOeste) {
    tempoPintinhos++;
    pintinhoO();
    if (tempoPintinhos/30>=6) {
      pintinhoOeste=false;
      tempoPintinhos=0;
    }
  }
}
