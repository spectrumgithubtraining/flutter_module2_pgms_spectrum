import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int count = 0;
  void incCount() {
    count = count + 1;
    notifyListeners();
  }

  void decCount() {
    count = count - 1;
    notifyListeners();
  }
}
