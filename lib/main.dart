import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/app_constants/app_themes.dart';
import 'package:sudoku_blitz/game_config/difficulty.dart';
import 'package:sudoku_blitz/screens/alas_screen.dart';
import 'package:sudoku_blitz/screens/congrats_screen.dart';
import 'package:sudoku_blitz/screens/level_screen.dart';
import 'package:sudoku_blitz/screens/main_screen.dart';

import 'app_constants/app_colors.dart';
import 'game_widgets/game_timer.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "easyGame": (context) => Game(
              difficulty: Difficulty.easy,
            ),
        "mediumGame": (context) => Game(
              difficulty: Difficulty.easy,
            ),
        "hardGame": (context) => Game(
              difficulty: Difficulty.advanced,
            ),
        "gameLost": (context) => AlasPage(),
        "chooseGame": (context) => LevelScreen()
      },
      theme: AppThemes.appTheme,
      debugShowCheckedModeBanner: false,
      home: CongratsScreen(time: 10),
    );
  }
}
