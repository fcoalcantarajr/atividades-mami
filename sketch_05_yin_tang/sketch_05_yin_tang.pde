boolean controle=true;
  int menor_modulo=300;
  int maior_modulo=400;
  int modulo=menor_modulo;

void setup() {
  size(400,400);
}

void draw() {
  background(200);
  if(modulo > maior_modulo) {
    controle=false;    
  }
  if(modulo < menor_modulo) {
    controle=true;
  }
  if (controle) {
    modulo+= 4;
  } else {
    modulo-=4;
  }
  yinyang(mouseX, mouseY, modulo);
}

void yinyang(int x, int y, int modulo) {
  fill(255);
  ellipse(x,y,modulo,modulo);
  fill(0);
  arc(x,y,modulo,modulo,-PI/2,PI/2);
  fill(0);
  noStroke();
  ellipse(x,y-modulo/4,modulo/2,modulo/2);
  fill(255);
  noStroke();
  ellipse(x,y+modulo/4,modulo/2,modulo/2);
  fill(255);
  noStroke();
  ellipse(x,y-modulo/4,modulo/8,modulo/8);
  fill(0);
  noStroke();
  ellipse(x,y+modulo/4,modulo/8,modulo/8);
}
