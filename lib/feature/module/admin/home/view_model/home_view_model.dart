import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final songViewProvider =
    ChangeNotifierProvider<SongViewModel>((ref) => SongViewModel(counter: 0));

class SongViewModel extends ChangeNotifier {
  int counter;
  SongViewModel({required this.counter});

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
