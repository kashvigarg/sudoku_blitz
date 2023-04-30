import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sudoku_blitz/logic/clock_notifier.dart';

final clockProvider = ChangeNotifierProvider((ref) => Clock());
