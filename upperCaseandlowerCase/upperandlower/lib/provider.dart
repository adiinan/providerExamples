import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class lowerandupper extends ChangeNotifier {
  String text = "Hey There , How Can I Help You";
  void uppercase() {
    text=text.toUpperCase();
    notifyListeners();
  }

  void lowercase() {
   text=text.toLowerCase();
    notifyListeners();
  }
}
