import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/game_config/content.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/logic/board_notifier.dart';
import 'package:sudoku_blitz/validator/validator.dart';

class SudokuCell extends ConsumerWidget {
  SudokuCell(this.row, this.column);

  int row;
  int column;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    return InkResponse(
      enableFeedback: true,
      onTap: () => print('Tapped $row, $column'),
      child: Container(
        color: sudo1[row][column] == 0
            ? Color.fromARGB(255, 182, 223, 241)
            : Colors.white,
        height: 53,
        width: 53,
        child: Center(
            child: sudo1[row][column] == 0
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          errorStyle: TextStyle(color: Colors.red),
                          errorBorder: UnderlineInputBorder()),
                      controller: _controller,
                      onTap: () => {
                        game.set(int.parse(_controller.value.toString()), row,
                            column),
                        _controller.dispose()
                      },
                      textAlign: TextAlign.center,
                      validator: (val) {
                        if (game.isValid(row, column, int.parse(val!)))
                          return null;
                        return '!';
                      },
                    ),
                  )
                : Text(game.get(row, column))),
      ),
    );
  }
}
