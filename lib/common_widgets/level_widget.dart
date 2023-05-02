import 'package:flutter/material.dart';
import 'package:sudoku_blitz/app_constants/app_config.dart';

import '../app_constants/app_colors.dart';

Widget easyWidget({Widget? child, double? height, double? width}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? safeHeight * 0.09,
        width: width ?? safeWidth * 0.5,
        decoration: BoxDecoration(color: AppColors.easy),
        child: child,
      ),
    );

Widget mediumWidget({Widget? child, double? height, double? width}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? safeHeight * 0.09,
        width: width ?? safeWidth * 0.5,
        decoration: BoxDecoration(color: AppColors.medium),
        child: child,
      ),
    );

Widget hardWidget({Widget? child, double? height, double? width}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? safeHeight * 0.09,
        width: width ?? safeWidth * 0.5,
        decoration: BoxDecoration(color: AppColors.hard),
        child: child,
      ),
    );
