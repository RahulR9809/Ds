class Node {
  dynamic key;
  dynamic value;
  Node? next;

  Node(this.key, this.value, [this.next]);
}

class Hashtable {
  late List<Node?> table;

  Hashtable(int size) {
    table = List<Node?>.filled(size, null);
  }

  int hash(dynamic key) => key.hashCode % table.length;

  void insert(dynamic key, dynamic value) {
    final index = hash(key);
    var newNode = Node(key, value, table[index]);
    table[index] = newNode;
  }

  void get() {
    for (var bucket in table) {
      var curr = bucket;
      while (curr != null) {
        print('${curr.key}: ${curr.value}');
        curr = curr.next;
      }
    }
  }

  void setSeparateChaining( key,value) {
    final index = hash(key);
    table[index] = Node(key, value, table[index]);
  }

  void setLinearProbing(key,value) {
    var index = hash(key);
    while (table[index] != null) {
      index = (index + 1) % table.length;
    }
    table[index] = Node(key, value);
  }
}

void main() {
  var h = Hashtable(5);
  h.insert('rahul', 21);
  h.insert('key', 5);
  h.setSeparateChaining('rr', 44);
  h.setLinearProbing('ll', 77);
  h.get();
}
