class Heap {
  List<int> heap = [];

  List<int> getHeap() {
    return List.from(heap);
  }

  int leftChild(int index) {
    return 2 * index + 1;
  }

  int rightChild(int index) {
    return 2 * index + 2;
  }

  int parent(int index) {
    return (index - 1) ~/ 2;
  }

  void swap(int index1, int index2) {
    int temp = heap[index1];
    heap[index1] = heap[index2];
    heap[index2] = temp;
  }

  void enqueue(int value) {
    heap.add(value);
    heapifyUp();
  }
  void heapifyUp() {
    int current = heap.length - 1;

    while(current > 0 && heap[current] > heap[parent(current)]) {
      swap(current, parent(current));
      current = parent(current);
    }
  }



   int? remove() {
    if (heap.isEmpty) {
      return null;
    }

    if (heap.length == 1) {
      return heap.removeLast();
    }

    int min = heap[0];
    heap[0] = heap.removeLast();
    heapifyDown(0);
    return min;
  }

  void heapifyDown(int index) {
    int minIndex = index;
    int size = heap.length;

    while (true) {
      int leftIndex = leftChild(index);
      int rightIndex = rightChild(index);

      if (leftIndex < size && heap[leftIndex] < heap[minIndex]) {
        minIndex = leftIndex;
      }

      if (rightIndex < size && heap[rightIndex] < heap[minIndex]) {
        minIndex = rightIndex;
      }

      if (minIndex != index) {
        swap(index, minIndex);
        index = minIndex;
      } else {
        break;
      }
    }
  }


  List<int> heapSort() {
    int n = heap.length;
    List<int> sortedArray = [];

    for (int i = n - 1; i >= 0; i--) {
      swap(0, i);
      sortedArray.insert(0, heap.removeLast());
      heapifyDown(0);
    }

    return sortedArray;
  }
}

void main() {
  Heap myHeap = Heap();

  myHeap.enqueue(95);
  myHeap.enqueue(75);
  myHeap.enqueue(80);

myHeap.heapSort();

  print(myHeap.getHeap());
}
