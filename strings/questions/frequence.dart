void main(List<String> args) {
  Map a;
  String str='kdhkjkj';
  a=countChars(str);
  print(a);

}
Map<String, int> countChars(String str) {
  Map<String, int> freq = {};
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    freq[char] = (freq[char] ?? 0) + 1;
  }
  return freq;
}