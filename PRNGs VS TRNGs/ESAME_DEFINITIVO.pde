import processing.pdf.*;

Anim currentAnim;

void setup() {
  background(255);
  fullScreen();
  currentAnim = new Anim();
}

void draw() {
  currentAnim.disegna();
}

void keyPressed() {
  if (key == '1') {
    currentAnim = new LGC();
  } else if (key == '2') {
    currentAnim = new TAUS();
  } else if (key == '3') {
    currentAnim = new FIB();
  } else if (key == '4') {
    currentAnim = new PEAC();
  } 
  else if (key == '5') {
    currentAnim = new NOISE();
  } 
    else if (key == '6') {
    currentAnim = new Anim();
  }
  else if (key == '0') {
    currentAnim = new Anim();
    background(255);
  }
}
