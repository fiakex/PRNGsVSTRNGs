class FIB extends Anim{

  int[] fibonacciSequence;
  int currentIndex = 0;

  FIB(){
    genFibonacci(width * height / qSize / qSize);
  }

  void disegna() {
    if (currentIndex < fibonacciSequence.length) {

      int fibonacciNumber = fibonacciSequence[currentIndex];

      int x = fibonacciNumber % (width / qSize) * qSize;
      int y = fibonacciNumber / (width / qSize) * qSize;

      fill(0);
      rect(x, y, qSize, qSize);

      currentIndex++;
    }
  }

  void genFibonacci(int length) {
    fibonacciSequence = new int[length];
    fibonacciSequence[0] = 0;
    fibonacciSequence[1] = 1;
    fibonacciSequence[2] = 2;
    fibonacciSequence[3] = 3;

    for (int i =4; i < length; i++) {
      fibonacciSequence[i] = fibonacciSequence[i-1] + fibonacciSequence[i-2];
    }
  }
}
