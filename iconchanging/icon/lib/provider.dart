import 'package:flutter/material.dart';

class iconchanging extends ChangeNotifier {
  IconData icon = Icons.add;
  void addicon() {
    icon = Icons.add;

    notifyListeners();
  }

  void minimise() {
    icon = Icons.minimize;
      notifyListeners();
  }

  void restart() {
    icon = Icons.restart_alt;
      notifyListeners();
  }
}
