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
        border: const TableBorder(
            left: BorderSide(color: Colors.black, width: 2.5),
            right: BorderSide(color: Colors.black, width: 2.5),
            top: BorderSide(color: Colors.black, width: 2.5),
            bottom: BorderSide(color: Colors.black, width: 2.5)),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: getRows,
      ),
    );
  }
}

List<TableRow> getRows =
    List.generate(9, (int rowNumber) => TableRow(children: getRow(rowNumber)));

List<Widget> getRow(int rowNumber) {
  return List.generate(
      9,
      (int colNumber) => Container(
          decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(
                      color: Colors.black,
                      width: colNumber % 3 == 2 ? 2.5 : 0.8),
                  bottom: BorderSide(
                      color: Colors.black,
                      width: rowNumber % 3 == 2 ? 2.5 : 0.8))),
          child: SudokuCell(rowNumber, colNumber)));
}
