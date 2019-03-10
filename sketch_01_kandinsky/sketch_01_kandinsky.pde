int hor=int(random(1, 6));
int vert=int(random(1, 6));
void setup() {
  size(600, 600);
  int pixel_hor=hor*120;
  int pixel_vert=vert*120;
  for (int i=60; i<pixel_hor; i=i+120) { // 60, metade de 120, para garantir que a 1ª coluna e a 1ª linha seja visível, já que os blocos são desenhados a partir do centro.
    for (int j=60; j<pixel_vert; j=j+120) {
      bloco(i, j);
    }
  }
}
void preencher() { // função para facilitar o preenchimento dos retângulos e dos círculos com cores aleatórias
  fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
}

void bloco(int x, int y) { // baseada na função original dada em sala.
  preencher();
  rect(x-60, y-60, 120, 120);
  preencher();
  ellipse(x, y, 100, 100);
  preencher();
  ellipse(x, y, 70, 70);
  preencher();
  ellipse(x, y, 40, 40);
}

// kandinsky(int(random(1,6)),int(random(1,6))); originalmente criei essa função pra facilitar a vida.
// trouxe o código pra dentro do setup pra deixar as variáveis de coluna e linha globais.
//void kandinsky(int hor, int vert) {
//  int pixel_hor=hor*120;
//  int pixel_vert=vert*120;
//  for (int i=60; i<pixel_hor; i=i+120) { // 60, metade de 120, para garantir que a 1ª coluna e a 1ª linha seja visível, já que os blocos são desenhados a partir do centro.
//    for (int j=60; j<pixel_vert; j=j+120) {
//      bloco(i, j);
//    }
//  }
//}
