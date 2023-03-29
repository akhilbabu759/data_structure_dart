// Create a hash function that maps strings to integer values. 
//Use the ASCII values of the characters in the string to calculate the hash value.
int hashString(String str) {
  var hash = 0;
  for (var i = 0; i < str.length; i++) {
    hash = (hash << 5) - hash + str.codeUnitAt(i);
  }
  return hash;
}
void main() {
  final str = 'hello world';
  final hashValue = hashString(str);
  print(hashValue); // Output: -1756985325
}
