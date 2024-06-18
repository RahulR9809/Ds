
class Node {
  int value;
  Node? left;
  Node? right;
  Node(this.value);
}

class bst {
  Node? root;
  insert(value) {
    root = ins(root, value);
  }

  ins(root, value) {
    if (root == null) {
      return Node(value);
    }
    if (value < root.value) { 
      root.left = ins(root.left, value);
    } else if (value > root.value) {
      root.right = ins(root.right, value);
    }
    return root;
  }

  preorder() {
    pre(root);
  }

  pre(root) {
    if (root != null) {
      print(root.value);
      pre(root.left);
      pre(root.right);
    }
  }

  postorder() {
    post(root);
  }

  post(root) {
    if (root != null) {
      post(root.left);
      post(root.right);
      print(root.value);
    }
  }

  List<int> inorder(root) {
    if (root == null) {
      return [];
    }
    return [...inorder(root.left), root.value, ...inorder(root.right)];
  }

  delete(value) {
    root = del(root, value);
  }

  del(root, value) {
    if (root == null) {
      return root;
    }
    if (value < root.value) {
      root.left = del(root.left, value);
    } else if (value > root.value) {
      root.right = del(root.right, value);
    } else {
      if (root.right == null) {
        return root.left;
      } else if (root.left == null) {
        return root.right;
      }
      root.value = minvalue(root.right);
      root.right = del(root.right, value);
    }
    return root;
  }

  minvalue(root) {
    int min = root.value;
    while (root.left != null) {
      min = root.left.value;
      root = root.left;
    }
    print('min$min');
    return min;
  }

  smallest(root) {
    if (root.left == null) {
      return root.value;
    }
    return smallest(root.left);
  }

  Largest(root) {
    if (root.right == null) {
      return root.value;
    }
    return Largest(root.right);
  }

  maxHeight(root) {
    if (root == null) {
      return 0;
    }
    int leftHeight = maxHeight(root.left);
    int rightHeight = maxHeight(root.right);
    return (leftHeight > rightHeight) ? leftHeight + 1 : rightHeight + 1;
  }


bool isBst(){
  List<int>inor=inorder(root);
  for(int i=1;i<inor.length;i++){
    if(inor[i]<=inor[i-1]){
      return false;
    }
  }
  return true;
}


search(value){
  return sear(root,value);
}
sear(root,value){
  if(root==null){
    return false;
  }
  if(value==root.value){
    return true;
  }else{
    if(value>root.value){
      return sear(root.right, value);
    }else{
      return sear(root.left, value);
    }
  }
}



bool isbalenced(root){
  if(root==null){
    return true;
  }
  int leftHeight=maxHeight(root.left);
  int rightHeight=maxHeight(root.right);
  if(isbalenced(root.left)&&
  isbalenced(root.left)&&
  (leftHeight-rightHeight).abs()<=1){
    return true;
  }
  return false;
}


sec(root){
  if(root.left.left==null && root.right.right==null){
    return root;
    
  }
return sec(root.right);

}

}

void main() {
  var ht = bst();
  ht.insert(4);
  ht.insert(3);
  ht.insert(5);
    ht.insert(6);
  ht.insert(7);

// print(ht.inorder(ht.root));

ht.preorder();
ht.delete(4);
//   print('largest${ht.Largest(ht.root)}');
//   print('smallest${ht.smallest(ht.root)}');
// print('searched${  ht.search(10)}');
// print(ht.maxHeight(ht.root));
//   ht.postorder();
// ht.minvalue(ht.root);
}
