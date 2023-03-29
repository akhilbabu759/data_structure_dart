// Write a function to calculate the load factor of the hash table.
double calculateLoadFactor(Map table) {
  int itemCount = table.length;
  int tableSize = table.keys.length;
   
  double loadFactor = itemCount / tableSize;
  return loadFactor;
}
void main(List<String> args) {
  Map<String, int> myTable = {"key1": 1, "key2": 2, "key3": 3};
double loadFactor = calculateLoadFactor(myTable);
print(loadFactor); // output: 1.0

}