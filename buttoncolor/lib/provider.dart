import 'package:flutter/material.dart';

class buttoncolor extends ChangeNotifier {
  MaterialColor color = Colors.blue;
  void buttoncolorr() {
    MaterialColor currentcolor = color;
    (color == Colors.blue) ? color = Colors.amber : color = Colors.blue;
    notifyListeners();
  }
}
