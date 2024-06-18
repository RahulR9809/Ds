class Node{
  dynamic key;
  dynamic value;
  dynamic next;
  Node(this.key,this.value,[this.next]);
}
class hashtable{
  late List<Node?>table;
  hashtable(size){
    table=List<Node?>.filled(size, null);
  }
  hash(key)=>key.hashCode%table.length;

  insert(key,value){
    final index=hash(key);
    final newnode=Node(key, value,table[index]);
    table[index]=newnode;
  }

  get(){
    for(var bucket in table){
      var curr=bucket;
      while(curr !=null){
        print(curr.value);
        curr=curr.next;
      }
    }
  }

contains(value){
  for(var bucket in table){
    var curr=bucket;
    while(curr !=null){
      if(curr.value==value){
        return true;
      }
      curr=curr.next;
    }
  }
  return false;
}


seperate(key,value){
  final index=hash(key);
  table[index]=Node(key, value,table[index]);
}

linear(key,value){
  var index=hash(key);
  while(table[index]!=null){
    index=(index+1)%table.length;
  }
  table[index]=Node(key, value);
}

}
void main(){
var ht=hashtable(5);
ht.insert('kkk', 99);
print(ht.contains(99));
ht.get();
}