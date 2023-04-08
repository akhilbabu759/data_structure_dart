void mergeSort(List<int> arr, int leftIndex, int rightIndex) {
  if (leftIndex < rightIndex) {
    int middleIndex = (leftIndex + rightIndex) ~/ 2;

    // Sort first and second halves recursively
    mergeSort(arr, leftIndex, middleIndex);
    mergeSort(arr, middleIndex + 1, rightIndex);

    // Merge the sorted halves
    merge(arr, leftIndex, middleIndex, rightIndex);
  }
}

void merge(List<int> arr, int leftIndex, int middleIndex, int rightIndex) {
  int n1 = middleIndex - leftIndex + 1;
  int n2 = rightIndex - middleIndex;

  // Create temporary arrays
  List<int> leftArr = List.filled(n1, 0);
  List<int> rightArr = List.filled(n2, 0);

  // Copy data to temporary arrays
  for (int i = 0; i < n1; i++) {
    leftArr[i] = arr[leftIndex + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArr[j] = arr[middleIndex + 1 + j];
  }

  // Merge the temporary arrays
  int i = 0, j = 0;
  int k = leftIndex;
  while (i < n1 && j < n2) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
    }
    k++;
  }

  // Copy remaining elements of leftArr[] if any
  while (i < n1) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  // Copy remaining elements of rightArr[] if any
  while (j < n2) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}
void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  mergeSort(arr, 0, arr.length - 1);
  print(arr); // [5, 6, 7, 11, 12, 13]
}
