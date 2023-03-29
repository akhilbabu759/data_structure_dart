class Node {
late  int value;
  Node? leftChild;
  Node? rightChild;

  Node(int value) {
    this.value = value;
    this.leftChild = null;
    this.rightChild = null;
  }
}

class BinarySearchTree {
  Node? root;

  BinarySearchTree() {
    this.root = null;
  }

  void insert(int value) {
    Node newNode = new Node(value);

    if (this.root == null) {
      this.root = newNode;
    } else {
      Node ?current = this.root;

      while (true) {
        if (value < current!.value) {
          if (current.leftChild == null) {
            current.leftChild = newNode;
            break;
          }
          current = current.leftChild;
        } else {
          if (current.rightChild == null) {
            current.rightChild = newNode;
            break;
          }
          current = current.rightChild;
        }
      }
    }
  }

  Node? search(int value) {
    Node? current = this.root;

    while (current != null) {
      if (current.value == value) {
        return current;
      } else if (value < current.value) {
        current = current.leftChild;
      } else {
        current = current.rightChild;
      }
    }

    return null;
  }
}
void main() {
  BinarySearchTree bst = new BinarySearchTree();

  // Insert some values into the tree
  bst.insert(5);
  bst.insert(3);
  bst.insert(7);
  bst.insert(1);
  bst.insert(9);

  // Search for a value in the tree
  Node ?result = bst.search(7);

  if (result != null) {
    print("Found node with value ${result.value}");
  } else {
    print("Node not found");
  }
}

