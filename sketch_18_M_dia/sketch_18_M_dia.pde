PImage img;
float r=0, mediaR, somaR=0; 
float v=0;
void setup() { 
  size(640, 480);
  img = loadImage("einstein_contraste.jpg");  // trocar aqui a imagem a ser avaliada
  for (int x=0; x<640; x++) {    
    for (int y=0; y<480; y++) { 
      color cor = img.get(x, y); 
      r = red(cor);
      somaR=somaR+r;
    }
  }
  mediaR = somaR/(640*480);
  println("Media de Tons é ", mediaR);
  for (int x=0; x<640; x++) {    
    for (int y=0; y<480; y++) {
      color cor = img.get(x, y);
      r = red(cor);
      v+=sq(r-somaR/(640*480));
    }
  }
  println("Desvio padrão é ", sqrt(v/(640*480)));
}

void draw() {  
  image(img, 0, 0);
}
