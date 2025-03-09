import 'package:flutter/material.dart';

class counterr extends ChangeNotifier {
  int counter = 0;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
