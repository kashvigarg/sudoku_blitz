import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Clock extends ChangeNotifier {
  Clock() : super();
  int time = 0;

  void begin() {
    onStart = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time++;
      notifyListeners();
    });
  }

  int end() {
    int curr = time;
    _timer.cancel();
    time = 0;
    onStart = false;
    return curr;
  }

  late Timer _timer;
  bool onStart = false;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
