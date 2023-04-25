import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/game_config/content.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/validator/validator.dart';

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
            child: sudo1[row][column] == 0
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      validator: (val) =>
                          validator(row, column, int.parse(val!), sudo1)
                              ? ''
                              : null,
                      initialValue: '',
                    ),
                  )
                : Text(sudo1[row][column].toString())),
      ),
    );
  }
}
