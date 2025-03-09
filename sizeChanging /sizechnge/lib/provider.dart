import 'package:flutter/material.dart';

class contsize extends ChangeNotifier {
  double height = 100;
  double width = 100;
  void big() {
    height = 300;
    width = 300;
    notifyListeners();
  }

  void small() {
    height = 50;
    width = 50;
    notifyListeners();
  }
}
