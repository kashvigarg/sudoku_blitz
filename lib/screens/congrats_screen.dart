import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sudoku_blitz/app_constants/app_colors.dart';
import 'package:sudoku_blitz/app_constants/app_config.dart';
import 'package:sudoku_blitz/app_constants/app_strings.dart';

class CongratsScreen extends StatelessWidget {
  CongratsScreen({super.key, required this.time});

  final num time;
  @override
  Widget build(BuildContext context) {
    final String str = winMsg(time);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "EASY",
                textAlign: TextAlign.center,
                style: TextStyle(
                    foreground: Paint()..shader = AppColors.easyTitleColor,
                    fontWeight: FontWeight.bold),
                textScaleFactor: 3.2,
              ),
              CircleAvatar(
                child: Image.asset(
                  'assets/images/win.png',
                  fit: BoxFit.contain,
                ),
                maxRadius: safeWidth * 0.3,
                backgroundColor: AppColors.secondaryBg,
              ),
              Text(
                "Total Time: $time s",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.white),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "NEXT",
                    textScaleFactor: 1.3,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
