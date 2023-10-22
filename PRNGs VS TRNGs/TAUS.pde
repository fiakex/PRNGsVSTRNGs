class TAUS extends Anim {
  long seed;

  TAUS() {
    seed = second();
  }

  void disegna() {
        genRandomPattern();
        frameRate(5);
  }

  void genRandomPattern() {

    randomSeed(seed);

    for (int x = 0; x < width; x += qSize) {
      for (int y = 0; y < height; y += qSize) {

        float randomValue = tausRandom();

        if (randomValue > 0.5) {
          color squareColor = color(random(255));

          if (brightness(squareColor) <= 50 ) {
            squareColor = lerpColor(squareColor, color(0), 1.0);
          }

          if (brightness(squareColor) > 50) {
            squareColor = lerpColor(squareColor, color(255), 1.0);
          }

          noStroke();
          fill(squareColor);
          rect(x, y, qSize, qSize);
        }
      }
    }
  }

  float tausRandom() {
    long b = 0b10000000000000000000000000000000;
    //long c = 0b00000100000000000000000000000000;

    seed ^= (seed << 15);
    seed ^= (seed >> 19);
    seed ^= (seed << 7);

    return (float) ((seed & b) >>> 40) + 2;
  }
}
