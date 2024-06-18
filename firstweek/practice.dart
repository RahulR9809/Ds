


class Node{
  late int value;
  Node?next;
  Node(this.value);
}
class LinkedList{
  Node?head;
  Node?tail;
  int size=0;
  bool isEmpty()=>size==0;

  append(int value){
final node=Node(value);
if(isEmpty()){
  head=node;
  tail=node;
}else{
  tail?.next=node;
  tail=node;
}
size++;
  }

 insert(index,value){
  if(index<0||index>size){
    print("in");
    return;
  }
  Node? newNode=Node(value);
  if(index==0){
    newNode.next=head;
    head=newNode;

    if(tail==null)tail=newNode;
  }else{
    Node? curr=head;
    for(int i=0;i<index-1;i++)
    curr=curr!.next;
    newNode.next=curr!.next;
    curr.next=newNode;
    if(index==size)tail=newNode;
  }
  size++;
 }

// void removeAt(int index) {
//   if (index < 0 || index >= size) {
//     print('Invalid index');
//     return;
//   }

//   Node? removeNode;
//   if (index == 0) {
//     removeNode = head;
//     head = removeNode!.next;
//     if (size == 1) {
//       tail = null;
//     }
//   } else {
//     Node? prev = head;
//     for (int i = 0; i < index - 1; i++) {
//       prev = prev!.next;
//     }
//     removeNode = prev!.next;
//     prev.next = removeNode!.next;
//     if (index == size - 1) {
//       tail = prev;
//     }
//   }
//   size--;
// }


void reverse() {
  Node? curr = head;
  Node? prev = null;
  while (curr != null) {
    Node? next = curr.next;
    curr.next = prev;
    prev = curr;
    curr = next;
  }
  tail = head;
  head = prev!;
}


 void merge(LinkedList list2) {
    if (list2.isEmpty()) return;
    if (isEmpty()) {
      head = list2.head;
      tail = list2.tail;
      size = list2.size;
    } else {
      tail!.next = list2.head;
      tail = list2.tail;
      size += list2.size;
    }
  }



sum(){
return head!.value + head!.next!.value;

}


  printlist(){
    var curent=head;
    while(curent!=null){
      print(curent.value);
      curent=curent.next;
    }
  }
}
void main() {
  LinkedList list = LinkedList();
  list.append(10);
  list.append(20);
  list.append(30);


  
  LinkedList list2 = LinkedList();
  list2.append(40);
  list2.append(50);
  list2.append(60);
  
  list.merge(list2);
list.reverse();
    int totalSum = list.sum();
    print(totalSum);
  list.printlist();
}
