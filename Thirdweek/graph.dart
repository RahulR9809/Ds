class Graph {
  Map<int, List<int>> adjacencyList = {};

  void addVertex(int vertex) {
    if (!adjacencyList.containsKey(vertex)) {
      adjacencyList[vertex] = [];
    }
  }

  void addEdge(int vertex, int neighbor) {
    if (!adjacencyList.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!adjacencyList.containsKey(neighbor)) {
      addVertex(neighbor);
    }
    adjacencyList[vertex]?.add(neighbor);
    adjacencyList[neighbor]?.add(vertex);
  }

  void removeEdge(int vertex, int neighbor) {
    adjacencyList[vertex]?.remove(neighbor);
    adjacencyList[neighbor]?.remove(vertex);
  }

  void removeVertex(int vertex) {
    if (adjacencyList.containsKey(vertex)) {
      for (var v in adjacencyList.keys) {
        adjacencyList[v]?.remove(vertex);
      }
      adjacencyList.remove(vertex);
    }
  }

  List<int> bfs(int startVertex) {
    Map<int, bool> visited = {};
    List<int> queue = [startVertex];
    List<int> result = [];

    visited[startVertex] = true;

    while (queue.isNotEmpty) {
      int currentVertex = queue.removeAt(0);
      result.add(currentVertex);

      for (int neighbor in adjacencyList[currentVertex]!) {
        if (!visited.containsKey(neighbor)) {
          visited[neighbor] = true;
          queue.add(neighbor);
        }
      }
    }

    return result;
  }

  void dfs(int vertex, Map<int, bool> visited) {
    visited[vertex] = true;
    print(vertex);
    if (adjacencyList.containsKey(vertex)) {
      for (int neighbor in adjacencyList[vertex]!) {
        if (!visited.containsKey(neighbor)) {
          dfs(neighbor, visited);
        }
      }
    }
  }

  void printGraph() {
    adjacencyList.forEach((vertex, neighbors) {
      print('$vertex: $neighbors');
    });
  }

  bool hasCycle() {
    Map<int, bool> visited = {};

    for (int vertex in adjacencyList.keys) {
      if (!visited.containsKey(vertex)) {
        if (hasCycleDfs(vertex, null, visited)) {
          return true;
        }
      }
    }

    return false;
  }

  bool hasCycleDfs(int vertex, int? parent, Map<int, bool> visited) {
    visited[vertex] = true;

    for (int neighbor in adjacencyList[vertex]!) {
      if (!visited.containsKey(neighbor)) {
        if (hasCycleDfs(neighbor, vertex, visited)) {
          return true;
        }
      } else if (neighbor != parent) {
        return true;
      }
    }

    return false;
  }

  bool hasPath(int startVertex, int targetVertex) {
    Map<int, bool> visited = {};
    return hasPathDfs(startVertex, targetVertex, visited);
  }

  bool hasPathDfs(int currentVertex, int targetVertex, Map<int, bool> visited) {
    if (currentVertex == targetVertex) {
      return true;
    }
    visited[currentVertex] = true;

    for (int neighbor in adjacencyList[currentVertex]!) {
      if (!visited.containsKey(neighbor)) {
        if (hasPathDfs(neighbor, targetVertex, visited)) {
          return true;
        }
      }
    }

    return false;
  }
}

void main() {
  Graph myGraph = Graph();
  myGraph.addVertex(1);
  myGraph.addVertex(2);
  myGraph.addVertex(3);
  myGraph.addVertex(4);

  myGraph.addEdge(1, 2);
  myGraph.addEdge(1, 3);
  myGraph.addEdge(1, 4);
  myGraph.addEdge(2, 4);

  // Remove edge and vertex
  // myGraph.removeEdge(1, 3);
  // myGraph.removeVertex(1);

  // DFS and BFS Traversal
  Map<int, bool> visited = {};
  print("DFS Traversal:");
  myGraph.dfs(1, visited);
  print("BFS Traversal: ${myGraph.bfs(1)}");

  // Print Graph
  print("Graph:");
  myGraph.printGraph();

  // Check for cycles and paths
  print("Has Cycle: ${myGraph.hasCycle()}");
  print("Has Path (1 -> 4): ${myGraph.hasPath(1, 4)}");
}


// class Graph {
//   Map<String, List<String>> adjacencyList = {};

//   bool addVertex(String vertex) {
//     if (!adjacencyList.containsKey(vertex)) {
//       adjacencyList[vertex] = [];
//       return true;
//     }
//     return false;
//   }

//   bool addEdge(String vertex1, String vertex2) {
//     if (adjacencyList.containsKey(vertex1) && adjacencyList.containsKey(vertex2)) {
//       adjacencyList[vertex1]!.add(vertex2);
//       adjacencyList[vertex2]!.add(vertex1);
//       return true;
//     }
//     return false;
//   }

//   bool removeEdge(String vertex1, String vertex2) {
//     if (adjacencyList.containsKey(vertex1) && adjacencyList.containsKey(vertex2)) {
//       adjacencyList[vertex1] = adjacencyList[vertex1]!.where((v) => v != vertex2).toList();
//       adjacencyList[vertex2] = adjacencyList[vertex2]!.where((v) => v != vertex1).toList();
//       return true;
//     }
//     return false;
//   }

//   Graph? removeVertex(String vertex) {
//     if (!adjacencyList.containsKey(vertex)) {
//       return null;
//     }

//     while (adjacencyList[vertex]!.isNotEmpty) {
//       var temp = adjacencyList[vertex]!.removeLast();
//       removeEdge(vertex, temp);
//     }

//     adjacencyList.remove(vertex);
//     return this;
//   }

//   List<String> bfs(String startVertex) {
//     var visited = <String, bool>{};
//     var queue = <String>[startVertex];
//     var result = <String>[];

//     visited[startVertex] = true;

//     while (queue.isNotEmpty) {
//       var currentVertex = queue.removeAt(0);
//       result.add(currentVertex);

//       for (var neighbor in adjacencyList[currentVertex]!) {
//         if (visited[neighbor] != true) {
//           visited[neighbor] = true;
//           queue.add(neighbor);
//         }
//       }
//     }

//     return result;
//   }

//   List<String> dfs(String startVertex) {
//     var visited = <String, bool>{};
//     var result = <String>[];

//     void dfsRecursive(String vertex) {
//       if (vertex == null) return;
//       visited[vertex] = true;
//       result.add(vertex);

//       for (var neighbor in adjacencyList[vertex]!) {
//         if (visited[neighbor] != true) {
//           dfsRecursive(neighbor);
//         }
//       }
//     }

//     dfsRecursive(startVertex);
//     return result;
//   }

//   bool hasCycle() {
//     var visited = <String, bool>{};

//     for (var vertex in adjacencyList.keys) {
//       if (visited[vertex] != true) {
//         if (hasCycleDfs(vertex, null, visited)) {
//           return true;
//         }
//       }
//     }

//     return false;
//   }

//   bool hasCycleDfs(String vertex, String? parent, Map<String, bool> visited) {
//     visited[vertex] = true;

//     for (var neighbor in adjacencyList[vertex]!) {
//       if (visited[neighbor] != true) {
//         if (hasCycleDfs(neighbor, vertex, visited)) {
//           return true;
//         }
//       } else if (neighbor != parent) {
//         return true;
//       }
//     }

//     return false;
//   }

//   bool hasPath(String startVertex, String targetVertex) {
//     var visited = <String, bool>{};
//     return hasPathDfs(startVertex, targetVertex, visited);
//   }

//   bool hasPathDfs(String currentVertex, String targetVertex, Map<String, bool> visited) {
//     visited[currentVertex] = true;

//     for (var neighbor in adjacencyList[currentVertex]!) {
//       if (visited[neighbor] != true) {
//         if (hasPathDfs(neighbor, targetVertex, visited)) {
//           return true;
//         }
//       } else if (neighbor == targetVertex) {
//         return true;
//       }
//     }

//     return false;
//   }
// }

// void main() {
//   var mygraph = Graph();
//   mygraph.addVertex("A");
//   mygraph.addVertex("B");
//   mygraph.addVertex("C");
//   mygraph.addVertex("D");
//   mygraph.addEdge("A", "B");

// }