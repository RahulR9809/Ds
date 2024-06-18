class Node {
  Map<String, Node> children = {};
  bool isEnd = false;
}

class Trie {
  var root = Node();

  void insert(String word) {
    var current = root;
    for(int i=0;i<word.length;i++){
      var char=word[i];
      if(!current.children.containsKey(char)){
       current.children[char]=Node();
      }
      current=current.children[char]!;
    }
    current.isEnd = true;
  }

  bool search(String word) {
    Node? current = _findNode(word);
    return current != null && current.isEnd;
  }

  Node? _findNode( str) {
    Node current = root;
    for (var char in str.split('')) {
      if (!current.children.containsKey(char)) return null;
      current = current.children[char]!;
    }
    return current;
  }


  List<String> prefixSearch(String prefix) {
    Node? current = _findNode(prefix);
    if (current == null) return [];
    
    List<String> words = [];
    void dfs(Node node, String currentWord) {
      if (node.isEnd) words.add(currentWord);
      node.children.forEach((char, child)
       => dfs(child, currentWord + char));
    }
    dfs(current, prefix);
    return words;
  }



  //   void printAllWords() {
  //   void dfs(Node node, String currentWord) {
  //     if (node.isEnd) {
  //       print(currentWord);
  //     }
  //     node.children.forEach((char, child) => dfs(child, currentWord + char));
  //   }

  //   dfs(root, "");
  // }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("ant");
  trie.insert("apricot");
  trie.insert("banana");

// trie.printAllWords();

  // print(trie.search("apple"));   // true
  // print(trie.search("ant"));     // true
  // print(trie.search("apricot")); // true
  // print(trie.search("banana"));  // true
  // print(trie.prefixSearch("a")); // ["apple", "ant", "apricot"]
  // print(trie.prefixSearch("ban")); // ["banana"]
}
