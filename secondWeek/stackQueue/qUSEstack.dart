class Stack {
  List<int> q = [];

  void push(int value) {
    List<int> tempq = [];
    while (q.isNotEmpty) {
      tempq.add(q.removeAt(0));
    }
    q.add(value);
    while (tempq.isNotEmpty) {
      q.add(tempq.removeAt(0));
    }
  }

 

    void get() {
    for (int i = q.length - 1; i >= 0; i--) {
      print(q[i]);
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
stack.get();
}
