import 'package:flutter/material.dart';
import 'package:sudoku_blitz/common_widgets/custom_app_bar.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/game_widgets/game_timer.dart';
import 'package:sudoku_blitz/game_widgets/sudoku_board.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/screens/congrats_page.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  final clock = const GameTimer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timer = ref.watch(clockProvider);
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200), child: CustomAppBar()),
      body: Column(
        children: [
          clock,
          SudokuBoard(
            difficulty: Difficulty.easy,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("Restart")),
              TextButton(
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => CongratsScreen(),
                        ),
                      ),
                  child: Text("Finish"))
            ],
          )
        ],
      ),
    );
  }
}
