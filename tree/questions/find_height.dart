import 'dart:math';

class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

int findHeight(Node? root) {
  if (root == null) {
    return -1;
  }

  int leftHeight = findHeight(root.left);
  int rightHeight = findHeight(root.right);

  return 1 + max(leftHeight, rightHeight);
}
void main() {
  Node root = Node(1);
  root.left = Node(2);
  root.right = Node(3);
  root.left!.left = Node(4);
  root.left!.right = Node(5);

  int height = findHeight(root);
  print(height); // 2
}
