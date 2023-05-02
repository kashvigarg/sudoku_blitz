import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sudoku_blitz/app_constants/app_colors.dart';
import 'package:sudoku_blitz/app_constants/app_config.dart';
import 'package:sudoku_blitz/common_widgets/custom_app_bar.dart';
import 'package:sudoku_blitz/common_widgets/level_widget.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: Size.fromHeight(50)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "SELECT A\nLEVEL",
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                foreground: Paint()..shader = AppColors.titleColor,
                fontWeight: FontWeight.w600),
            textScaleFactor: 3.2,
          ),
          Column(
            children: [
              easyWidget(child: easyButton(context)),
              mediumWidget(child: mediumButton(context)),
              hardWidget(child: hardButton(context))
            ],
          ),
        ],
      ),
    );
  }
}

Widget easyButton(BuildContext context) => TextButton(
      onPressed: () {
        Navigator.pushNamed(context, "easyGame");
      },
      child: Text(
        "EASY",
        style: TextStyle(color: AppColors.white),
        textScaleFactor: 2,
      ),
    );

Widget mediumButton(BuildContext context) => TextButton(
      onPressed: () {
        Navigator.pushNamed(context, "mediumGame");
      },
      child: Text(
        "MEDIUM",
        style: TextStyle(color: AppColors.white),
        textScaleFactor: 2,
      ),
    );

Widget hardButton(BuildContext context) => TextButton(
      onPressed: () {
        Navigator.pushNamed(context, "hardGame");
      },
      child: Text(
        "HARD",
        style: TextStyle(color: AppColors.white),
        textScaleFactor: 2,
      ),
    );
