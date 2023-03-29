int kthSmallest(List<int> arr, int k) {
  if (k > arr.length) {
    throw Exception('k is larger than the size of the array');
  }
  
  for (int i = 0; i < k; i++) {
    int minIndex = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
  
  return arr[k - 1];
}
void main() {
  List<int> arr = [5, 2, 9, 1, 7, 3];
  int k = 3;
  int kth = kthSmallest(arr, k);
  print('$k-th smallest element is $kth');
}
