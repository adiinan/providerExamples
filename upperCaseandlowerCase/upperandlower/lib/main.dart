import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upperandlower/home.dart';
import 'package:upperandlower/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => lowerandupper(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
