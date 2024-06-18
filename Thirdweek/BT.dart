
// class Node{
//   int value;
//   Node? left;
//   Node? right;

//   Node(this.value);
// }

// class BinaryTree {
//   Node? root;

//   void insert( value) {
//     root = _insert(root, value);
//   }

//   Node _insert( node, value) {
//     if (node == null) {
//       return Node(value);
//     }
//     if (value.hashCode < node.value.hashCode) {
//       node.left = _insert(node.left, value);
//     } else {
//       node.right = _insert(node.right, value);
//     }
//     return node;
//   }

//   void inorder() {
//     inorderRec(root);
//   }

//   void inorderRec(Node? root) {
//     if (root != null) {
//       inorderRec(root.left);
//       print(root.value);
//       inorderRec(root.right);
//     }
//   }
// }

// void main() {
//   var binaryTree = BinaryTree();
//   binaryTree.insert(1);
//   binaryTree.insert(2);
//   binaryTree.insert(3);
//   binaryTree.insert(4);
//   binaryTree.insert(5);

//   binaryTree.inorder();
// }


class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinaryTree {
  Node? root;

  void insert(int value) {
    root = _insert(root, value);
  }

  Node _insert(Node? node, int value) {
    if (node == null) {
      return Node(value);
    }
    if (value < node.value) {
      node.left = _insert(node.left, value);
    } else {
      node.right = _insert(node.right, value);
    }
    return node;
  }

  void levelOrder() {
    if (root == null) {
      return;
    }

    List<Node> queue = [];
    queue.add(root!); // Adding root to the queue


    while (queue.isNotEmpty) {
      Node current = queue.removeAt(0); // Removing the front node from the queue
      print(current.value);

      if (current.left != null) {
        queue.add(current.left!); // Adding left child to the queue
      }
      if (current.right != null) {
        queue.add(current.right!); // Adding right child to the queue
      }
    }
  }
}

void main() {
  var binaryTree = BinaryTree();
  binaryTree.insert(1);
  binaryTree.insert(2);
  binaryTree.insert(3);
  binaryTree.insert(4);
  binaryTree.insert(5);

  binaryTree.levelOrder();
}
