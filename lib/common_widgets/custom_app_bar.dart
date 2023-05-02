import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // actions: [
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.restart_alt))
      // ],
      centerTitle: true,
      leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(Icons.arrow_back_rounded)),
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      // title: const Text(
      //   "Sudoku 2.0",
      //   style: TextStyle(color: Colors.black),
      // ),
    );
  }
}
