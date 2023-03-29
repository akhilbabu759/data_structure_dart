void insertionSort(List<String> list) {
  for (int i = 1; i < list.length; i++) {
    String key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j].compareTo(key) > 0) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = key;
  }
}
void main() {
  List<String> list = ['banana', 'apple', 'pear', 'orange', 'grape'];
  print('Original list: $list');
  insertionSort(list);
  print('Sorted list: $list');
}
