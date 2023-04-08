class Graph {
 late int _numVertices;
  late List<List<int>> _adjList;

  Graph(int numVertices) {
    _numVertices = numVertices;
    _adjList = List<List<int>>.generate(
        numVertices, (index) => List<int>.empty(growable: true));
  }

  void addEdge(int src, int dest) {
    _adjList[src].add(dest);
    _adjList[dest].add(src);
  }

  void printGraph() {
    for (int i = 0; i < _numVertices; i++) {
      print("Adjacency list of vertex $i");
      for (int j = 0; j < _adjList[i].length; j++) {
        print(" -> ${_adjList[i][j]}");
      }
      print("");
    }
  }
}

void main() {
  
  Graph graph = Graph(4);

 
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 3);

  graph.printGraph();
}

