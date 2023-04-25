import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/game_widgets/sudoku_cell.dart';

class SudokuBoard extends StatelessWidget {
  const SudokuBoard({super.key, required Difficulty difficulty});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: getRows,
      ),
    );
  }
}

List<TableRow> getRows =
    List.generate(9, (int rowNumber) => TableRow(children: getRow(rowNumber)));

List<SudokuCell> getRow(int rowNumber) {
  return List.generate(9, (int colNumber) => SudokuCell(rowNumber, colNumber));
}
