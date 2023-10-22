class LGC extends Anim {  
  int x;
  int y;

  LGC() {
    generateRandomPosition();
  }

  void disegna() {
    generateRandomPosition();
    noStroke();
    fill(0);
    rect(x, y, qSize, qSize);
  }

  void generateRandomPosition() {
    x = (int) random(width - qSize);
    y = (int) random(height - qSize);
  }

  void keyPressed() {
    if (key == 's')
    {
      save("immagine"+System.currentTimeMillis()+".png");
    }
  }
}
