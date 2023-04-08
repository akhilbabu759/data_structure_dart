void quickSort(List<int> arr, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(arr, left, right);
    quickSort(arr, left, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, right);
  }
}

int partition(List<int> arr, int left, int right) {
  int pivot = arr[right];
  int i = left - 1;
  for (int j = left; j < right; j++) {
    if (arr[j] < pivot) {
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[right];
  arr[right] = temp;
  return i + 1;
}
void main(List<String> args) {
  List<int> arr = [5, 2, 9, 3, 7, 6, 1, 8, 4];
quickSort(arr, 0, arr.length - 1);
print(arr); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

}