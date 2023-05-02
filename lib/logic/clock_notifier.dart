import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Clock extends ChangeNotifier {
  Clock() : super();
  int time = 0;

  void begin() {
    if (onStart = false) time = 0;
    onStart = true;
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      time++;
      notifyListeners();
    });
  }

  int end() {
    time = 0;
    int curr = time;
    _timer.cancel();
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
