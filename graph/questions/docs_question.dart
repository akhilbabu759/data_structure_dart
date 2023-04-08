// questions:   
//         Solve the below problem: You’re given a two-dimensional array (a matrix) of potentially unequal height & width containing only 0’s & 1’s. Each 0 represents land, and each 1 represents part of a river. A river consists of any number of 1’s that are either horizontally or vertically adjacent (but not diagonally adjacent). The number of adjacent 1’s forming a river determine its size. 
// Note that a river can twist. In other words, it doesn’t have to be a straight vertical line or a straight horizontal line; it can be L-shaped, for example.
// Write a function that returns an array of the sizes of all rivers represented in the input matrix. The sizes don’t need to be in any particular order



List<int> riverSizes(List<List<int>> matrix) {
  List<int> sizes = [];
  List<List<int>> graph = createGraph(matrix);
  List<bool> visited = List.filled(graph.length, false); // initialize to all false values
  for (int i = 0; i < graph.length; i++) {
    if (!visited[i]) {
      int size = traverseRiver(graph, visited, i);
      sizes.add(size);
    }
  }
  return sizes;
}


List<List<int>> createGraph(List<List<int>> matrix) {
  List<List<int>> graph = [];
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == 1) {
        List<int> neighbors = [];
        if (i > 0 && matrix[i - 1][j] == 1) {
          neighbors.add((i - 1) * matrix[0].length + j);
        }
        if (i < matrix.length - 1 && matrix[i + 1][j] == 1) {
          neighbors.add((i + 1) * matrix[0].length + j);
        }
        if (j > 0 && matrix[i][j - 1] == 1) {
          neighbors.add(i * matrix[0].length + (j - 1));
        }
        if (j < matrix[i].length - 1 && matrix[i][j + 1] == 1) {
          neighbors.add(i * matrix[0].length + (j + 1));
        }
        graph.add(neighbors);
      } else {
        graph.add([]);
      }
    }
  }
  return graph;
}

int traverseRiver(List<List<int>> graph, List<bool> visited, int node) {
  int size = 1;
  visited[node] = true;
  for (int neighbor in graph[node]) {
    if (!visited[neighbor]) {
      size += traverseRiver(graph, visited, neighbor);
    }
  }
  return size;
}
void main() {
  List<List<int>> matrix = [    [1, 0, 0, 1, 0],
    [1, 0, 1, 0, 0],
    [0, 0, 1, 0, 1],
    [1, 0, 1, 0, 1],
    [1, 0, 1, 1, 0],
  ];

  List<int> sizes = riverSizes(matrix);
  print('Sizes of rivers in matrix:');
  print(sizes);
}

