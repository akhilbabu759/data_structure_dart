void main() {
  BinaryTree tree = BinaryTree();

  tree.add(5);
  tree.add(3);
  tree.add(7);
  tree.add(1);
  tree.add(9);

  print(tree.contains(7)); 
  print(tree.contains(4)); 

  tree.remove(7);

  print(tree.contains(7)); 
}
class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);

  @override
  String toString() => '$value';
}

class BinaryTree {
  Node? root;

  void add(int value) {
    root = _addRecursive(root, value);
  }

  Node? _addRecursive(Node? current, int value) {
    if (current == null) {
      return Node(value);
    }

    if (value < current.value) {
      current.left = _addRecursive(current.left, value);
    } else if (value > current.value) {
      current.right = _addRecursive(current.right, value);
    } else {
     
      return current;
    }

    return current;
  }

  bool contains(int value) {
    return _containsRecursive(root, value);
  }

  bool _containsRecursive(Node? current, int value) {
    if (current == null) {
      return false;
    }

    if (value == current.value) {
      return true;
    }

    if (value < current.value) {
      return _containsRecursive(current.left, value);
    } else {
      return _containsRecursive(current.right, value);
    }
  }

  void remove(int value) {
    root = _removeRecursive(root, value);
  }

  Node? _removeRecursive(Node? current, int value) {
    if (current == null) {
      return null;
    }

    if (value == current.value) {
      if (current.left == null && current.right == null) {
        
        return null;
      } else if (current.left == null) {
       
        return current.right;
      } else if (current.right == null) {
       
        return current.left;
      } else {
      
        Node? smallest = _findSmallest(current.right!);
        current.value = smallest!.value;
        current.right = _removeRecursive(current.right, smallest.value);
        return current;
      }
    }

    if (value < current.value) {
      current.left = _removeRecursive(current.left, value);
      return current;
    } else {
      current.right = _removeRecursive(current.right, value);
      return current;
    }
  }

  Node? _findSmallest(Node current) {
    while (current.left != null) {
      current = current.left!;
    }
    return current;
  }
}
