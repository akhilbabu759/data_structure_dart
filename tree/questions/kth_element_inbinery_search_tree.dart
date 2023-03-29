class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

int kthSmallest(Node? root, int k) {
  List<int> values = [];

  void inorderTraversal(Node? node) {
    if (node == null) {
      return;
    }

    inorderTraversal(node.left);
    values.add(node.value);
    inorderTraversal(node.right);
  }

  inorderTraversal(root);

  return values[k - 1];
}
void main() {
  Node root = Node(4);
  root.left = Node(2);
  root.right = Node(6);
  root.left!.left = Node(1);
  root.left!.right = Node(3);
  root.right!.left = Node(5);
  root.right!.right = Node(7);

  int kthSmallestElement = kthSmallest(root, 3);
  print(kthSmallestElement); // 3
}
