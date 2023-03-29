
String replaceAlphabets(String input, int n) {
  String output = "";
  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];
    String newChar = "";
    if (currentChar.toLowerCase() != currentChar.toUpperCase()) { 
      int currentCharIndex = currentChar.toLowerCase().codeUnitAt(0) - 97; 
      int newCharIndex = (currentCharIndex + n) % 26; 
      newChar = String.fromCharCode(newCharIndex + 97); 
      if (currentChar.toUpperCase() == currentChar) { 
        newChar = newChar.toUpperCase(); 
      }
    } else {
      newChar = currentChar; 
    }
    output += newChar; 
  }
  return output;
}
void main() {
  String input = "Hello, world!";
  int n = 3;
  String output = replaceAlphabets(input, n);
  print(output); 
}
