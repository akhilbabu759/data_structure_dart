class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

bool isBST(Node? root, int? minVal, int? maxVal) {
  if (root == null) {
    return true;
  }

  if ((minVal != null && root.value <= minVal) || (maxVal != null && root.value >= maxVal)) {
    return false;
  }

  return isBST(root.left, minVal, root.value) && isBST(root.right, root.value, maxVal);
}
void main() {
  Node root = Node(4);
  root.left = Node(2);
  root.right = Node(5);
  root.left!.left = Node(1);
  root.left!.right = Node(3);

  bool isbST = isBST(root, null, null);
  print(isbST); // true
}
