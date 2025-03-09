import 'package:flutter/material.dart';

class containercolor extends ChangeNotifier {
  Color color = Colors.black;

  void green() {
    color = Colors.green;
    notifyListeners();
  }

  void bluecolor() {
    color = Colors.blue;
    notifyListeners();
  }
}

class containersize extends ChangeNotifier {
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

class textstyle extends ChangeNotifier {
  String name = "Hey Mathew,Are You Okay?";
  void uppercase() {
   name= name.toUpperCase();
   notifyListeners();
  }

  void lowercase() {
    name=name.toLowerCase();
    notifyListeners();
  }
}
