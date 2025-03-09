
import 'package:flutter/material.dart';

class Sum extends ChangeNotifier {
  int a = 0;
  int b = 0;
  int sum = 0;
  bool load = false;
  setload(bool value) {
    load = value;
    notifyListeners();
  }

  void summ(String word1, String word2) {
    int a = int.parse(word1);
    int b = int.parse(word2);
    sum = a + b;
    notifyListeners();
  }
}
