int findKthSmallest(int k, List<int> nums) {
  if (k <= 0 || k > nums.length) {
    return 0  ;
  }

  int n = nums.length;

  for (int i = 0; i < k; i++) {
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

  return nums[k - 1];
}
void main() {
  List<int> nums = [5, 2, 8, 3, 1];
  int k = 3;
  int kthSmallest = findKthSmallest(k, nums);
  print('The $k-th smallest element is $kthSmallest'); // output: The 3-th smallest element is 3
}
