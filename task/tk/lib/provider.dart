import 'package:flutter/material.dart';

class Sum extends ChangeNotifier {
  int num1 = 0;
  int num2 = 0;
  int sum = 0;
  bool load = false;
  setload(bool value) {
    load = value;
  }

  void summ(String word1, String word2) {
    int a = int.parse(word1);
    int b = int.parse(word2);
    sum = a + b;
    notifyListeners();
  }
}
