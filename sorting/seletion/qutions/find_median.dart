double findMedian(List<int> nums) {
  int n = nums.length;

  for (int i = 0; i < n; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (nums[j] < nums[minIndex]) {
        minIndex = j;
      }
    }

    int temp = nums[i];
    nums[i] = nums[minIndex];
    nums[minIndex] = temp;
  }

  int middleIndex = (n / 2).floor();
  if (n % 2 == 0) {
    return (nums[middleIndex] + nums[middleIndex - 1]) / 2;
  } else {
    return nums[middleIndex].toDouble();
  }
}
void main() {
  List<int> nums = [5, 2, 8, 3, 1, 7];
  double median = findMedian(nums);
  print('The median of the array is $median'); // output: The median of the array is 4.0
}

