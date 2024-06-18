

class Node{
  late int value;
  Node?next;
  Node(this.value);
}
class Linkedlist{
  Node?head;
  Node?tail;
  int size=0;
bool isEmpty()=>size==0;
 
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
    for(int i=0;i<index-1;i++)curr=curr!.next;
    newNode.next=curr!.next;
    curr.next=newNode;
    if(index==size)tail=newNode;
  }
  size++;

 }

  append(value){
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
  prepend(value){
final node=Node(value);
if(isEmpty()){
  head=node;
  tail=node;

}else{
  node.next=head;
  head=node;
}
size++;
  }

  merge(Linkedlist list2){
   if(list2.isEmpty())return;
   if(isEmpty()){
    head=list2.head;
    tail=list2.tail;
    size=list2.size;
   }else{
    tail?.next=list2.head;
    tail=head;
    size+=list2.size;
   }
  }
  reverse(){
    Node?curr=head;
    Node?prev=null;
    while(curr!=null){
      Node?next=curr.next;
      curr.next=prev;
      prev=curr;
      curr=next;
    }
    tail=head;
    head=prev;
  }



  remove(int index){
if(index<0||index>=size){
  print('invalid');
  return;
}
Node? remoeveNode;
if(index==0){
  remoeveNode=head;
  head=remoeveNode!.next;
  if(size==1){
    tail=null;
    head=null;
  }
}else{
  Node? prev=head;
  for(int i=0;i<index-1;i++){
    prev=prev!.next;
  
  }
  remoeveNode=prev!.next;
  prev.next=remoeveNode!.next;
  if(index==size-1){
    tail=prev;
  }
}
size--;
  }


// bruh

 int findMax() {
    int max = head!.value;
    Node? curr = head;
    while (curr != null) {
      max = (curr.value > max) ? curr.value : max;
      curr = curr.next;
    }
    return max;
  }

  int findMiddle() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    return slow!.value;
  }

// bruh


  display(){
    var curent=head;
    while(curent!=null){
      print(curent.value);
      curent=curent.next;
    }
  }
}
void main(){
  Linkedlist list=Linkedlist();
  list.append(10);


  list.append(20);

  // list.append(30);
  // list.remove(0);
  
Linkedlist list2=Linkedlist();
 list2.append(40);
  list2.append(50);
  list2.append(60);
  list.merge(list2);
  // list.reverse();
  list.insert(1, 99);
 print('middle:${list.findMiddle()}');
  print('max:${list.findMax()}');
list.display();
}