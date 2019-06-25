PImage imgOrigem1, imgOrigem2;
PImage imgDestino = createImage(600, 600, RGB); // imagem que será atualizada à medida que o draw() é atualizado, mostrando no final
color cor;
float k=0; // controle

void setup() {
  size(600, 600);
  imgOrigem1 = loadImage("whitepony.jpg");
  imgOrigem2 = loadImage("aroundthefur.jpg");
  imgFinal();
}

void draw() {
  transicao();
}

void imgFinal() { // exibição inicial da imagem
  for (int i=0; i<600; i++) {
    for (int j=0; j<600; j++) {
      cor=imgOrigem1.get(i, j);
      imgDestino.set(i, j, cor);
    }
  }
}

void transicao() {
  for (int i =0; i<k; i++) {
    for (int j=0; j<k; j++) {
      // quadrante 1 
      cor=imgOrigem2.get(i, j);
      imgDestino.set(i, j, cor);
      // quadrante 2
      cor=imgOrigem2.get(i, 600-j);
      imgDestino.set(i, 600-j, cor);
      // quadrante 3
      cor=imgOrigem2.get(600-i, j);
      imgDestino.set(600-i, j, cor);
      // quadrante 4
      cor=imgOrigem2.get(600-i, 600-j);
      imgDestino.set(600-i, 600-j, cor);
    }
  }
  if (k<600) {
    k=k+0.5;
  }
  image(imgDestino, 0, 0);  
}
