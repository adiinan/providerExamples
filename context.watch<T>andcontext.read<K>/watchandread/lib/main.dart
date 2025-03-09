import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:watchandread/home.dart';
import 'package:watchandread/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => counterr(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
