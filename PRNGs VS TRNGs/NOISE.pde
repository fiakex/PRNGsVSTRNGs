class NOISE extends Anim 
{
String[] bitStrings;  
int bitIndex = 0;     

NOISE() {

  String filePath = "/Users/fiake/Desktop/università/PRIMO ANNO/SECONDO SEMESTRE/GYSIN/ESAME_DEFINITIVO/NOISE_def.txt";
  bitStrings = loadStrings(filePath);
  
    if (bitStrings == null) {
    println("/Users/fiake/Desktop/università/PRIMO ANNO/SECONDO SEMESTRE/GYSIN/ESAME_DEFINITIVO/NOISE_def.txt");
    exit();  
  }
  
}

void disegna() {
  float randomNumberX = getRandomRange(0, 900);
   float randomNumberY = getRandomRange(0, 900);
  println(randomNumberX);
  println(randomNumberY);

  float x = (randomNumberX)*random(0, 100);
  float y = (randomNumberY)*random(0, 100);
  fill(0);
  rect(x, y, qSize, qSize);
  
}

float getRandomRange(float min, float max) {
  int numBits = ceil(log(max - min + 1) / log(2));
  String bits = extractBits(numBits);
  int value = binaryStringToInt(bits);
  float randomNumber = map(value, 0, pow(2, numBits) - 1, min, max);
  return randomNumber;
}

String extractBits(int numBits) {
  StringBuilder bitsBuilder = new StringBuilder();
  
  for (int i = 0; i < numBits; i++) {
    String bitString = bitStrings[bitIndex % bitStrings.length];
    bitsBuilder.append(bitString.charAt(bitIndex % bitString.length()));
    bitIndex++;
  }
  
  return bitsBuilder.toString();
}

int binaryStringToInt(String binaryString) {
  return Integer.parseInt(binaryString, 2);
}

  
}
