String reverseString(String str) {
  String reversedStr = '';
  for (int i = str.length - 1; i >= 0; i--) {
    reversedStr += str[i];
  }
  return reversedStr;
}
void main() {
  String str = 'hello world';
  String reversedStr = reverseString(str);
  print(reversedStr); // expected output: "dlrow olleh"
}
