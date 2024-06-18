
class Stack {
  List<int> q = [];

  void push(int value) {
    q.insert(0, value);
  }

  int? pop() {
    if (q.isEmpty) {
      return null;
    }
    return q.removeAt(0);
  }

  void display() {
    print( {q.join(', ')});
  }
}

class Queue {
  List<int> stack = [];

  void enqueue(int value) {
    stack.insert(0, value);
  }

  int? dequeue() {
    if (stack.isEmpty) {
      return null;
    }
    return stack.removeLast();
  }

  void display() {
    print({stack.join(', ')});
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
queue.dequeue();
  queue.display(); 

  Stack stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
stack.pop();
  stack.display(); // Stack contents: 2, 1
}
