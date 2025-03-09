import 'package:buttoncolor/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => buttoncolor(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<buttoncolor>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                color.buttoncolorr();
              },

              child: Text("pressme"),style: ElevatedButton.styleFrom(
                backgroundColor:color.color
              ),)
        ],
      ),
    );
  }
}
