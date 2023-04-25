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
      elevation: 0,
      foregroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      title: const Text(
        "Sudoku 2.0",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
