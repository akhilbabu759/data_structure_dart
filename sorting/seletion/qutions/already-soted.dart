void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  selectionSort(arr);
  print(arr); // [1, 2, 3, 4, 5]
}
void selectionSort(List<int> arr) {
  int n = arr.length;
  bool isSorted = true;
  for (int i = 0; i < n - 1; i++) {
    int minIdx = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    if (minIdx != i) {
      int temp = arr[i];
      arr[i] = arr[minIdx];
      arr[minIdx] = temp;
      isSorted = false;
    }
    if (isSorted) {
      print('index${i}');
      return; // array is already sorted, no need to continue
    }
  }
}
