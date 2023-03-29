class MinHeap {
 late List<int> _heap;

  MinHeap(List<int> array) {
    _heap = buildHeap(array);
  }

  void printLessThan(int x) {
    _printLessThan(0, x);
  }

  void _printLessThan(int index, int x) {
    if (index >= _heap.length) {
      return;
    }

    if (_heap[index] < x) {
      print(_heap[index]);
      _printLessThan(_getLeftChildIndex(index), x);
      _printLessThan(_getRightChildIndex(index), x);
    }
  }

  List<int> buildHeap(List<int> array) {
    int firstParentIndex = (array.length - 2) ~/ 2;
    for (int currentIndex = firstParentIndex; currentIndex >= 0; currentIndex--) {
      _siftDown(currentIndex, array.length - 1, array);
    }
    return array;
  }

  void _siftDown(int currentIndex, int endIndex, List<int> heap) {
    int leftChildIndex = _getLeftChildIndex(currentIndex);
    while (leftChildIndex <= endIndex) {
      int rightChildIndex = _getRightChildIndex(currentIndex);
      int smallerChildIndex = leftChildIndex;
      if (rightChildIndex <= endIndex && heap[rightChildIndex] < heap[leftChildIndex]) {
        smallerChildIndex = rightChildIndex;
      }
      if (heap[smallerChildIndex] < heap[currentIndex]) {
        _swap(currentIndex, smallerChildIndex, heap);
        currentIndex = smallerChildIndex;
        leftChildIndex = _getLeftChildIndex(currentIndex);
      } else {
        return;
      }
    }
  }

  int _getLeftChildIndex(int parentIndex) => 2 * parentIndex + 1;

  int _getRightChildIndex(int parentIndex) => 2 * parentIndex + 2;

  void _swap(int i, int j, List<int> heap) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}
void main() {
  List<int> array = [7, 5, 6, 3, 4, 1, 2];
  MinHeap minHeap = MinHeap(array);
  minHeap.printLessThan(4); // Output: 3 1 2
}
