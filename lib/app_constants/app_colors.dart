import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color easy = const Color.fromARGB(255, 83, 209, 152);
  static Color medium = const Color.fromARGB(255, 35, 152, 254);
  static Color hard = const Color.fromARGB(255, 152, 134, 254);
  static Color secondaryBg = Color.fromARGB(255, 114, 101, 140);
  static Color secondaryBgBorder = Color.fromARGB(255, 79, 62, 109);
  static Color background = const Color.fromARGB(255, 33, 14, 75);
  static Color white = Colors.white;
  static Color buttonColor = const Color.fromARGB(126, 118, 207, 255);
  static Shader titleColor = LinearGradient(colors: [
    Colors.pink,
    Colors.orange,
    Colors.purple,
  ]).createShader(Rect.fromLTWH(200.0, 100.0, 170.0, 120.0));

  static Shader easyTitleColor =
      LinearGradient(colors: [Colors.green, Colors.yellow, Colors.greenAccent])
          .createShader(Rect.fromLTWH(200.0, 100.0, 170.0, 120.0));

  static Shader mediumTitleColor =
      LinearGradient(colors: [Colors.blue, Colors.white, Colors.blueAccent])
          .createShader(Rect.fromLTWH(200.0, 100.0, 170.0, 120.0));

  static Shader hardTitleColor = LinearGradient(colors: [
    Colors.orange,
    Colors.red,
    Colors.purple,
  ]).createShader(Rect.fromLTWH(200.0, 100.0, 170.0, 120.0));
}
