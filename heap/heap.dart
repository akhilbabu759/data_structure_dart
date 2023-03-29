class MaxHeap {
  List<int> heap = [];

  MaxHeap() {}

  MaxHeap.build(List<int> values) {
    heap = values;
    for (int i = ((heap.length - 1) / 2).floor(); i >= 0; i--) {
      _heapifyDown(i);
    }
  }

  void insert(int value) {
    heap.add(value);
    _heapifyUp(heap.length - 1);
  }

  int remove() {
    if (heap.isEmpty) throw Exception("Heap is empty");
    int maxValue = heap[0];
    int lastValue = heap.removeLast();
    if (heap.isNotEmpty) {
      heap[0] = lastValue;
      _heapifyDown(0);
    }
    return maxValue;
  }

  void _heapifyUp(int index) {
    int parentIndex = (index - 1) ~/ 2;
    while (index > 0 && heap[parentIndex] < heap[index]) {
      int temp = heap[index];
      heap[index] = heap[parentIndex];
      heap[parentIndex] = temp;
      index = parentIndex;
      parentIndex = (index - 1) ~/ 2;
    }
  }

  void _heapifyDown(int index) {
    int leftChildIndex = index * 2 + 1;
    int rightChildIndex = index * 2 + 2;
    int largestIndex = index;

    if (leftChildIndex < heap.length &&
        heap[leftChildIndex] > heap[largestIndex]) {
      largestIndex = leftChildIndex;
    }
    if (rightChildIndex < heap.length &&
        heap[rightChildIndex] > heap[largestIndex]) {
      largestIndex = rightChildIndex;
    }

    if (largestIndex != index) {
      int temp = heap[index];
      heap[index] = heap[largestIndex];
      heap[largestIndex] = temp;
      _heapifyDown(largestIndex);
    }
  }
}
void main() {
  MaxHeap maxHeap = MaxHeap();
  maxHeap.insert(5);
  maxHeap.insert(10);
  maxHeap.insert(7);
  maxHeap.insert(3);
  maxHeap.insert(1);
  maxHeap.insert(8);

  print(maxHeap.heap); // Output: [10, 5, 8, 3, 1, 7]

  int maxValue = maxHeap.remove();
  print(maxValue); // Output: 10
  print(maxHeap.heap); // Output: [8, 5, 7, 3, 1]

  MaxHeap maxHeap2 = MaxHeap.build([1, 5, 3, 7, 2, 8]);
  print(maxHeap2.heap); // Output: [8, 7, 3, 5, 2, 1]
}
