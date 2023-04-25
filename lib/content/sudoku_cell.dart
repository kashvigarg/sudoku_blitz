import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/content/content.dart';
import 'package:sudoku_blitz/content/difficulty.dart';

class SudokuCell extends ConsumerWidget {
  SudokuCell(this.row, this.column);

  int row;
  int column;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkResponse(
      enableFeedback: true,
      onTap: () => print('Tapped $row, $column'),
      child: Container(
        color: Colors.white,
        height: 30,
        width: 30,
        child: Center(
          child: Text('${sudo1[row][column]}'),
        ),
      ),
    );
  }
}
