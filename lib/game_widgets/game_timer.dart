import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/app_constants/app_colors.dart';
import 'package:sudoku_blitz/common_widgets/custom_app_bar.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/game_widgets/sudoku_board.dart';
import 'package:sudoku_blitz/providers/clock_provider.dart';

class Game extends ConsumerWidget {
  Game({super.key, required this.difficulty});

  Difficulty difficulty;

  @override
  String get level => difficulty.name;
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(clockProvider);
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(100)),
      body: Center(
        child: Column(
          children: [
            Text(
              "Time taken",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: AppColors.easy),
              textScaleFactor: 2,
            ),
            Text(
              "${time.time} s",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: AppColors.white),
              textScaleFactor: 1.6,
            ),
            SudokuBoard(difficulty: difficulty),
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
                          color: Colors.white,
                          size: 60,
                        )),
                  ),
                  IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: time.end,
                      icon: const Icon(
                        Icons.flag,
                        color: Color.fromARGB(255, 189, 68, 59),
                        size: 60,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
