class PEAC extends Anim 
{

  int[] fibonacciSequence;
int currentIndex = 0;


PEAC() {
  genFibonacci(width * height / qSize / qSize);
 }

void disegna() {
  if (currentIndex < fibonacciSequence.length) {
    int fibonacciNumber = fibonacciSequence[currentIndex];

    int x = (fibonacciNumber % (width / qSize) + currentIndex / (width / qSize)) % (width / qSize) * qSize;
    int y = (fibonacciNumber / (width / qSize) + currentIndex / (height / qSize)) % (height / qSize) * qSize;

    fill(0);
    rect(x, y, qSize, qSize);

    currentIndex++;
  }
}

void genFibonacci(int length) {
  fibonacciSequence = new int[length];
  fibonacciSequence[0] = 0;
  fibonacciSequence[1] = 1;

  for (int i = 2; i < length; i++) {
    fibonacciSequence[i] = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
  }
}
  
}
