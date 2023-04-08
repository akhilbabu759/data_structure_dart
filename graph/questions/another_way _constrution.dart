class Graph {
 late int V; // number of vertices
 late List<List<int>> adjList; // adjacency list
  
  Graph(int V) {
    this.V = V;
    adjList = List.generate(V, (i) => []);
  }

  // add an edge to the graph
  void addEdge(int u, int v) {
    adjList[u].add(v);
    adjList[v].add(u); // since it's an undirected graph
  }

  // print the adjacency list
  void printGraph() {
    for (int i = 0; i < V; i++) {
      print("Adjacency list of vertex $i");
      print("head -> ${adjList[i]}");
    }
  }
}

void main() {
  Graph g = Graph(5);
  g.addEdge(0, 1);
  g.addEdge(0, 4);
  g.addEdge(1, 2);
  g.addEdge(1, 3);
  g.addEdge(1, 4);
  g.addEdge(2, 3);
  g.addEdge(3, 4);
  g.printGraph();
}
