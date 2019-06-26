String[] nomes = { "img01.png", "img02.png", "img03.png", 
"img04.png", "img05.png", "img06.png", "img07.png", 
"img08.png", "img09.png", "img10.png", "img11.png"};
PImage[] imagens = new PImage[nomes.length];
PImage result = createImage(824, 548, RGB);
int[] cores = new int[nomes.length];

void setup() {  
  size(824, 548);
color cor;
  for (int i=0; i < nomes.length; i++) {
    String img = nomes[i];
    imagens[i] = loadImage(img);
  }

  for (int x=0; x<824; x++) {
    for (int y=0; y<548; y++) {
      for (int i=0; i < nomes.length; i++) {
         cor = imagens[i].get(x, y);
        cores[i] = cor2Int(cor);
      }
      //result.set(x, y, int2Cor(mediana(cores)));
      if(int2Cor(moda(cores))>5)
      result.set(x, y, int2Cor(moda(cores)));
      else{
        if(y<350 && x<300)
        result.set(x, y, imagens[4].get(x,y));
        else
        result.set(x, y, int2Cor(mediana(cores)));
      }
  }
  }
}
void draw() {
  image(result, 0, 0);
}
int cor2Int (color cor) {
  return int(blue(cor) * 65536 + green(cor) * 256 + red(cor));
}
color int2Cor(int cor) {
  int B = cor/65536;
  int G = (cor - B * 65536)/ 256;
  int R = cor - B * 65536 - G * 256;
  return color(R, G, B);
}
int mediana(int[] cores){
  cores = sort(cores);
  int mediana = cores[nomes.length/2];
  return mediana;
}
int moda(int[] cores) {
  //boolean naoHa=true;
  int qtdModa = 0;
  int numModa=0;
  int contador = 0;
  cores = sort(cores);
  for (int i = 0; i < (cores.length - 1); i++) {
    if (cores[i] == cores[i+1]){
      contador++;
 //     naoHa=false;
    }else{
      contador = 0;}
    if (contador > qtdModa) {
      qtdModa = contador;
      numModa = cores[i];
    }
 
}
  return numModa;
}
