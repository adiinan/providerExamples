import 'package:flutter/material.dart';
import 'package:icon/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => iconchanging(),
    child: MyApp(),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<iconchanging>(
      builder: (context, value, child) {
        return Column(
          children: [
            Icon(value.icon),
            ElevatedButton(
                onPressed: () {
                  value.addicon();
                },
                child: Icon(Icons.add)),
            ElevatedButton(
                onPressed: () {
                  value.minimise();
                },
                child: Icon(Icons.minimize)),
            ElevatedButton(
                onPressed: () {
                  value.restart();
                },
                child:Icon(Icons.restart_alt)),
          ],
        );
      },
    ));
  }
}
