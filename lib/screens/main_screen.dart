import 'package:flutter/material.dart';
import 'package:sudoku_blitz/app_constants/app_config.dart';
import 'package:sudoku_blitz/screens/home_screen.dart';

import '../app_constants/app_colors.dart';
import '../common_widgets/custom_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "SUDOKU\nBLITZ",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  foreground: Paint()..shader = AppColors.titleColor,
                  fontWeight: FontWeight.w600),
              textScaleFactor: 3.2,
            ),
            Column(
              children: [PlayButton()],
            ),
          ],
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: safeHeight * 0.25,
        width: safeWidth * 0.35,
        child: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "chooseGame");
            },
            icon: Icon(
              Icons.play_arrow_rounded,
              size: safeWidth * 0.2,
            )),
        decoration: ShapeDecoration(
          shape: CircleBorder(),
          color: Colors.red,
          // borderRadius: BorderRadius.circular(50)),
        ));
  }
}
