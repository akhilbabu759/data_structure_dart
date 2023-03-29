class Player {
  String name;
  int score;

  Player(this.name, this.score);
}

void bubbleSort(List<Player> players) {
  int n = players.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (players[j].score < players[j + 1].score) {
        Player temp = players[j];
        players[j] = players[j + 1];
        players[j + 1] = temp;
      }
    }
  }
}

void printLeaderboard(List<Player> players) {
  print('LEADERBOARD:');
  for (int i = 0; i < players.length; i++) {
    print('${i + 1}. ${players[i].name} - ${players[i].score}');
  }
}

void main() {
  List<Player> players = [
    Player('Alice', 100),
    Player('Bob', 75),
    Player('Charlie', 90),
    Player('David', 50),
    Player('Eve', 120),
  ];

  printLeaderboard(players);

  bubbleSort(players);

  printLeaderboard(players);
}
