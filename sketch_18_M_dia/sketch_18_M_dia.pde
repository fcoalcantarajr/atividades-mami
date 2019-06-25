PImage img;
float t=0, mediaT, somaT=0; 
float v=0, somaV=0;
void setup() { 
  size(640, 480);  

  img = loadImage("cinza.jpg");  
  for (int x=0; x<640; x++) {    
    for (int y=0; y<480; y++) { 
      color cor = img.get(x, y); 
      t = red(cor);
      somaT = somaT + t;         
      somaV = somaV + v;
      mediaT = somaT/(640*480);
      v = (t-mediaT)*(t-mediaT);
    }
  }  
  mediaT = somaT/(640*480);
  float mediaV = somaV/(640*480);
  println("Media de Tons é ", mediaT);
  println("Variância é ", mediaV);
  println("Desvio padrão é ", sqrt(mediaV));
} 
void draw() {  
  image(img, 0, 0);
}
