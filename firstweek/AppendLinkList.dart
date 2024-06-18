
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

  void append(int value) {
    final node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
     tail?.next=node;
     tail=node;
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
  list.append(10);
  list.append(20);
   list.append(30);
    list.append(40);
     list.append(50);
  list.printList();
}
