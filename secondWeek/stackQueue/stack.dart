class Node {
  late int value;
  Node? next;
  
  Node(this.value);
}

class Stack {
  Node? head;
  int size = 0;

  bool isEmpty() => size == 0;

  void push(int value) {
    final node = Node(value);
    node.next = head;
    head = node;
    size++;
  }

  int? pop() {
    if (isEmpty()) return null;
    final value = head!.value;
    head = head!.next;
    size--;
    return value;
  }

//normal reverse//

//   void reverse() {
//     Node? prev = null;
//     Node? current = head;
//     Node? next;

//     while (current != null) {
//       next = current.next;
//       current.next = prev;
//       prev = current;
//       current = next;
//     }
//     head = prev;
//   }
// }

// void reverse(){
//   Node?prev=null;
//   Node?curr=head;
//   Node?next;
//   while(curr !=null){
//     next=curr.next;
//     curr.next=prev;
//     prev=curr;
//     curr=next;
//   }
//   head=prev;
// }



  // Check if a specific value exists in the stack
  // bool contains(int value) {
  //   Node? current = head;
  //   while (current != null) {
  //     if (current.value == value) {
  //       return true;
  //     }
  //     current = current.next;
  //   }
  //   return false;
  // }


bool current(value){
  var curr=head;
  while(curr !=null){
    if(curr.value==value){
      return true;
    }
    curr=curr.next;
  }
  return false;
}






// // Check if a number is prime
// bool isPrime(int num) {
//   if (num <= 1) return false;
//   if (num <= 3) return true;
//   if (num % 2 == 0 || num % 3 == 0) return false;
//   int i = 5;
//   while (i * i <= num) {
//     if (num % i == 0 || num % (i + 2) == 0) return false;
//     i += 6;
//   }
//   return true;
// }




// //revers using recursion//
//   void reverse() {
//     head = _reverseRecursive(head);
//   }

//   Node? _reverseRecursive(Node? node) {
//     if (node == null || node.next == null) {
//       return node;
//     }
//     Node? newHead = _reverseRecursive(node.next);
//     node.next!.next = node;
//     node.next = null;
//     return newHead;
//   }


  void printStack() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  final list = Stack();
  list.push(10);
  list.push(10);
  list.push(20);
  list.push(30);
  // list.reverse();
// print(list.contains(50));
  print(list.pop());
  list.printStack();
}
