import 'package:flutter/material.dart';
import 'package:sudoku_blitz/common_widgets/custom_app_bar.dart';
import 'package:sudoku_blitz/content/difficulty.dart';
import 'package:sudoku_blitz/content/sudoku_board.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), child: CustomAppBar()),
      body: SudokuBoard(
        difficulty: Difficulty.easy,
      ),
    );
  }
}
