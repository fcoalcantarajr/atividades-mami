PImage imgOriginal;
PImage imgDestino = createImage(640, 360, RGB);
color corOriginal, corDestino;
float r, g, b, media;

void setup() {
  size(1280, 360);
  imgOriginal = loadImage("vaporwave.jpg");
  processaImagem();
  image(imgOriginal, 0, 0);
  image(imgDestino, 640, 0);
}

void processaImagem() {
  for (int x = 0; x < 640; x++) {
    for (int y = 0; y < 360; y++) {
      corOriginal = imgOriginal.get(x,y);
      r = 255-red(corOriginal);
      g = 255-green(corOriginal);
      b = 255-blue(corOriginal);
      corDestino = color(r, g, b);
      imgDestino.set(x, y, corDestino);
    }
  }
}

PImage 
