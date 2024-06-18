class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void add(int data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = Node(data);
    }
  }

  void addList(List<int> dataList) {
    for (int data in dataList) {
      add(data);
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  List<int> arr = [1, 2, 3, 4, 5];
  
 
  for (int i=0;i<arr.length;i++) {
    list.add(arr[i]);
  }
  
  list.display();

}
