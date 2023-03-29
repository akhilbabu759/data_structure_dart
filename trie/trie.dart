class TrieNode {
  final Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  final TrieNode root = TrieNode();

  void insert(String word) {
    var currentNode = root;
    for (final char in word.split('')) {
      if (!currentNode.children.containsKey(char)) {
        currentNode.children[char] = TrieNode();
      }
      currentNode = currentNode.children[char]!;
    }
    currentNode.isEndOfWord = true;
  }

  bool search(String word) {
    var currentNode = root;
    for (final char in word.split('')) {
      if (!currentNode.children.containsKey(char)) {
        return false;
      }
      currentNode = currentNode.children[char]!;
    }
    return currentNode.isEndOfWord;
  }
}

void main() {
  final trie = Trie();
  trie.insert('hello');
  trie.insert('world');
  print(trie.search('hello')); // true
  print(trie.search('world')); // true
  print(trie.search('hi')); // false
}
