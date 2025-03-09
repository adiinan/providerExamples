import 'package:flutter/material.dart';
import 'package:multipleproviders/home.dart';
import 'package:multipleproviders/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) =>containercolor() ),
    ChangeNotifierProvider(create: (context) => containersize()),
    ChangeNotifierProvider(create:(context) => textstyle() )
  ],child: MyApp(),));
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
