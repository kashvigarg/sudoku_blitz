import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameTimer extends ConsumerWidget {
  const GameTimer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.watch(clockProvider);
    return Center(
      child: Column(
        children: [const Text("Time taken"), Text("${time.time} s")],
      ),
    );
  }
}

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

  late Timer _timer;
  bool onStart = false;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

final clockProvider = ChangeNotifierProvider((ref) => Clock());
