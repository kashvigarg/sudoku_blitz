// import 'package:flutter/material.dart';
// import 'package:sudoku_blitz/common_widgets/custom_app_bar.dart';
// import 'package:sudoku_blitz/game_config/difficulty.dart';
// import 'package:sudoku_blitz/game_widgets/game_timer.dart';
// import 'package:sudoku_blitz/game_widgets/sudoku_board.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:sudoku_blitz/screens/congrats_screen.dart';

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return SafeArea(
//       child: Scaffold(
//         drawer: Drawer(),
//         appBar: const PreferredSize(
//             preferredSize: Size.fromHeight(100), child: CustomAppBar()),
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.max,
//             children: const [
//               Game(),
//               // SudokuBoard(
//               //   difficulty: Difficulty.easy,
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
