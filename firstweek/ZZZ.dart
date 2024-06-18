


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
  
 append(int value){
  var node=Node(value);
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
  var node=Node(value);
  if(isEmpty()){
    head=node;
    tail=node;
  }else{
    node.next=head;
    head=node;
  }
  size++;
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

 merge(Linkedlist list2){
  if(list2.isEmpty())return;
  if(isEmpty()){
    head=list2.head;
    tail=list2.tail;
    size=list2.size;
  }else{
    tail!.next=list2.head;
    tail=head;
    size+=list2.size;
  }
 }

remove(index){
if(index<0||index>size){
  print('invalid');
  return;
}
Node?remoeveNode;
if(index==0){
remoeveNode=head;
head=remoeveNode!.next;
if(index==1){
  head=null;
  tail=null;
}

}else{
  var prev=head;
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

  display(){
    var curent=head;
    while(curent!=null){
      print(curent.value);
      curent=curent.next;
    }
  }
}
void main(){
  var list=Linkedlist();
  list.append(10);
  list.append(20);
  list.append(30);

   var list2=Linkedlist();
  list.append(40);
  list.append(50);
  list.append(60);
  list.merge(list2);
  list.remove(0);
  list.reverse();
  list.display();
}