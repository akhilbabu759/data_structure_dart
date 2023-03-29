List<int> insertionSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for(int j=i;j>0;j--){
      if(arr[j]<arr[j-1]){
        int t =arr[j];
        arr[j]=arr[j-1];
        arr[j-1]=t;

      }
    }


   
  }
  return arr;
}
void main() {
  List<int> arr = [4, 2, 7, 1, 3];
  print('Original array: $arr');
  List<int> sortedArr = insertionSort(arr);
  print('Sorted array: $sortedArr');
}
