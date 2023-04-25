bool isValidRow(int row, int col, int val, List<List<int>> game) {
  for (int i = 0; i != row && i < game.length; i++) {
    if (game[i][col] == val) return false;
  }
  return true;
}

bool isValidColumn(int row, int col, int val, List<List<int>> game) {
  for (int i = 0; i != col && i < game.length; i++) {
    if (game[row][i] == val) return false;
  }
  return true;
}

bool isValidGrid(int row, int col, int val, List<List<int>> game) {
  int tRow = row ~/ 3;
  int tCol = col ~/ 3;

  for (int i = tRow * 3; i != row && i < tRow * 3 + 3; i++) {
    for (int j = tCol * 3; j != col && j < tCol; j++) {
      if (game[i][j] == val) return false;
    }
  }
  return true;
}

bool validator(int row, int col, int val, List<List<int>> game) {
  if (isValidGrid(row, col, val, game) &&
      isValidRow(row, col, val, game) &&
      isValidColumn(row, col, val, game)) return true;
  return false;
}
