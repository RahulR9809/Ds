// class Node{
//   late int value;
//   Node? prev; // New: Reference to the previous node
//   Node? next;
//   Node(this.value);
// }

// class Linkedlist{
//   Node? head;
//   Node? tail;
//   int size=0;
//   bool isEmpty()=>size==0;

//   append(int value){
//     var node=Node(value);
//     if(isEmpty()){
//       head=node;
//       tail=node;
//     }else{
//       tail!.next=node;
//       node.prev=tail; // New: Setting the previous node reference
//       tail=node;
//     }
//     size++;
//   }

//   remove(int index){
//     if(index<0||index>=size){
//       print('invalid');
//       return;
//     }
//     Node? removeNode;
//     if(index==0){
//       removeNode=head;
//       head=removeNode!.next;
//       if(size==1){
//         tail=null;
//       } else {
//         head!.prev=null; // New: Clearing previous reference of the new head
//       }
//     } else {
//       Node? prevNode=head;
//       for(int i=0;i<index;i++){
//         prevNode=prevNode!.next;
//       }
//       removeNode=prevNode!.next;
//       prevNode.next=removeNode!.next;
//       if(removeNode.next != null){
//         removeNode.next!.prev=prevNode; // New: Updating previous reference of the next node
//       } else {
//         tail=prevNode; // New: Update tail if removing the last node
//       }
//     }
//     size--;
//   }

//   display(){
//     var current=head;
//     while(current!=null){
//       print(current.value);
//       current=current.next;
//     }
//   }
// }

// void main(){
//   var list=Linkedlist();
//   list.append(10);
//   list.append(20);
//   list.append(30);
//   // list.prepend(5);
//   // list.reverse();

//   var list2=Linkedlist();
//   list2.append(10);
//   list2.append(20);
//   list2.append(30);
//   list.remove(0);
//   list.display();
// }


class Node {
  late int value;
  Node? next;
  Node? prev; // New: Reference to previous node

  Node(this.value);
}

class LinkedList {
  Node? head;
  Node? tail;
  int size = 0;

  bool isEmpty() => size == 0;

  void append(int value) {
    var node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      tail!.next = node;
      node.prev = tail; // Update previous reference of the new node
      tail = node;
    }
    size++;
  }

  void prepend(int value) {
    var node = Node(value);
    if (isEmpty()) {
      head = node;
      tail = node;
    } else {
      head!.prev = node; // Update previous reference of the current head
      node.next = head;
      head = node;
    }
    size++;
  }

  void remove(int index) {
    if (index < 0 || index >= size) {
      print('Invalid index');
      return;
    }

    Node? removeNode;
    if (index == 0) {
      removeNode = head;
      head = removeNode!.next;
      if (head != null) head!.prev = null; // Update previous reference of the new head
      if (size == 1) tail = null;
    } else {
      var current = head;
      for (int i = 0; i < index - 1; i++) {
        current = current!.next;
      }
      removeNode = current!.next;
      current.next = removeNode!.next;
      if (current.next != null) 
      current.next!.prev = current; // Update previous reference of the next node
      if (index == size - 1) tail = current;
    }
    size--;
  }

  // Other methods remain the same...

  void display() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  var list = LinkedList();
  list.append(10);
  list.append(20);
  list.append(30);
  list.prepend(5);

  var list2 = LinkedList();
  list2.append(40);
  list2.append(50);
  list2.append(60);
  // list.merge(list2);
  // list.reverse();
  list.remove(2);
  list.display();
}
