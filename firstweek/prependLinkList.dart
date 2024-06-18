

class Node {
  late int value;
  Node? next;
  
  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;
  int size = 0;

  bool isEmpty() => size == 0;

  void prepend(int value) {
    final node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      node.next = head;
      head = node;
    }
    size++;
  }

  void printList() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  final list = LinkedList();
  
  list.prepend(10);
  list.prepend(20);
   list.prepend(30);
    list.prepend(40);
     list.prepend(50);
  list.printList();
}
