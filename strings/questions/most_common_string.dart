String mostCommonChar(String str) {
  Map<String, int> charCount = {};
  int maxCount = 0;
  String mostCommon = '';
  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    if (charCount.containsKey(currentChar)) {
      charCount[currentChar] = charCount[currentChar]! + 1;
    } else {
      charCount[currentChar] = 1;
    }
    if (charCount[currentChar]! > maxCount) {
      maxCount = charCount[currentChar]!;
      mostCommon = currentChar;
    }
  }
  return mostCommon;
}
void main() {
  String str = 'hello world';
  String mostCommon = mostCommonChar(str);
  print(mostCommon); // expected output: "l"
}
