import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/win.png',
                fit: BoxFit.contain,
              ),
              Text(
                str,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
