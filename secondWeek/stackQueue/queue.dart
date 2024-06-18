class Node {
  late int value;
  Node? next;
  
  Node(this.value);
}

class Queue {
  Node? head;
  Node? tail;
  int size = 0;

  bool isEmpty() => size == 0;

   enqueue(int value) {
    final node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      tail!.next = node;
      tail = node;
    }
    size++;
  }

  int? dequeue() {
    if (isEmpty()) return null;
    final value = head!.value;
    head = head!.next;
    size--;
    return value;
  }


 void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    tail = head;  // Update tail to the original head
    head = prev;
  }


  void printQueue() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  final list = Queue();
  list.enqueue(10);
  list.enqueue(20);
  list.enqueue(30);

  print(list.dequeue());
  list.printQueue();
}
