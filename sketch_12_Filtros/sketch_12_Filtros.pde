PImage imgOriginal;
PImage imgDestino1 = createImage(640, 360, RGB); // destino filtro ruído
PImage imgDestino2 = createImage(640, 360, RGB); // destino filtro cinza
PImage imgDestino3 = createImage(640, 360, RGB); // destino filtro vermelho
PImage imgDestino4 = createImage(640, 360, RGB); // destino filtro amarelo

color corOriginal, corDestino1, corDestino2, corDestino3, corDestino4;
float r1, r2, r3, r4, g1, g2, g4, b1, b2, media;

void setup() {
  size(1280, 720);
  imgOriginal = loadImage("vaporwave.jpg");
  filtroRuido();
  filtroCinza();
  filtroVermelho();
  filtroAmarelo();
  image(imgDestino1, 0, 0);
  image(imgDestino2, 640, 0);
  image(imgDestino3, 0, 360);
  image(imgDestino4, 640, 360);
}

void filtroRuido() {
  for (int x = 0; x < 640; x++) {
    for (int y = 0; y < 360; y++) {
      corOriginal = imgOriginal.get(x, y);
      float flag = random(0, 10);
      if (flag<1) {
        corDestino1=color(random(256), random(256), random(256));
        imgDestino1.set(x, y, corDestino1);
      } else {
        r1 = red(corOriginal);
        g1 = green(corOriginal);
        b1 = blue(corOriginal);
        corDestino1=color(r1, g1, b1);
        imgDestino1.set(x, y, corDestino1);
      }
    }
  }
}

void filtroCinza() {
  for (int x = 0; x < 640; x++) {
    for (int y = 0; y < 360; y++) {
      corDestino1 = imgDestino1.get(x, y);
      r2 = red(corDestino1);
      g2 = green(corDestino1);
      b2 = blue(corDestino1);
      media = 0.3*r2+0.59*g2+0.11*b2;
      corDestino2=color(media, media, media);
      imgDestino2.set(x, y, corDestino2);
    }
  }
}

void filtroVermelho() {
  for (int x = 0; x < 640; x++) {
    for (int y = 0; y < 360; y++) {
      corDestino2 = imgDestino2.get(x, y);
      r3 = red(corDestino2);
      corDestino3 = color(r3, 0, 0);
      imgDestino3.set(x, y, corDestino3);
    }
  }
}

void filtroAmarelo() {
  for (int x = 0; x < 640; x++) {
    for (int y = 0; y < 360; y++) {
      corDestino3 = imgDestino3.get(x, y);
      r4 = red(corDestino3);
      corDestino4 = color(r4, r4, 0);
      imgDestino4.set(x, y, corDestino4);
    }
  }
}
