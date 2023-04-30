import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/game_config/content.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/game_widgets/sudoku_board.dart';
import 'package:sudoku_blitz/validator/validator.dart';

class Board extends ChangeNotifier {
  Board({required this.sudokuBoard}) : super();

  SudokuBoard sudokuBoard;
  List<List<int>> board = sudo1;

  bool isValid(int row, int col, int val) {
    if (isValidRow(row, col, val, board) &&
        isValidColumn(row, col, val, board) &&
        isValidGrid(row, col, val, board)) {
      return true;
    } else
      return false;
  }

  String get(int row, int col) {
    return board[row][col] == 0 ? '' : board[row][col].toString();
  }

  // check difficulty
  int get rows => sudokuBoard.rows;
  int get cols => sudokuBoard.cols;

  void clear() {}

  void set(int value, int row, int col) {
    board[row][col] = value;
    notifyListeners();
  }
}

final gameProvider = ChangeNotifierProvider((ref) =>
    Board(sudokuBoard: const SudokuBoard(difficulty: Difficulty.easy)));
