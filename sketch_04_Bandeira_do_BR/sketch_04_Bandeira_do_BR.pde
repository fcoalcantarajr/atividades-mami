void setup() {
  size(800,600);
}

void draw() {
  background(200);
  mostraBandeiraBrasil(mouseX, mouseY, 300);
}

void mostraBandeiraBrasil(int x, int y, int altura) {
  float modulo=altura/14.0;
  ret_bandeira(x,y,modulo);
  losango_bandeira(x,y,modulo);
  circ_bandeira(x,y,modulo);
}

void ret_bandeira(int cX, int cY, float mod) {  //desenho do retângulo 
  fill(0,156,59);
  noStroke();
  rectMode(CENTER);
  rect(cX,cY,mod*20,mod*14);
}

void losango_bandeira(int cX, int cY, float mod) { // desenho do losango
  fill(255,223,0);
  quad(cX,(cY-5.3*mod),(cX+8.3*mod),cY,cX,(cY+5.3*mod),(cX-8.3*mod),cY); // p'', p''', p'''', p'
}

void circ_bandeira(int cX, int cY, float mod) { // desenho do círculo
  fill(0,39,118);
  ellipse(cX,cY,7*mod,7*mod);
}
