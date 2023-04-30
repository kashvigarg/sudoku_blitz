import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/game_widgets/sudoku_board.dart';
import 'package:sudoku_blitz/providers/clock_provider.dart';

class Game extends ConsumerWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(clockProvider);
    return Center(
      child: Column(
        children: [
          const Text(
            "Time taken",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("${time.time} s"),
          const SudokuBoard(difficulty: Difficulty.easy),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: IconButton(
                      alignment: Alignment.center,
                      onPressed: time.begin,
                      icon: const Icon(
                        Icons.restart_alt,
                        size: 60,
                      )),
                ),
                IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: time.end,
                    icon: const Icon(
                      Icons.flag,
                      color: Colors.black,
                      size: 60,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
