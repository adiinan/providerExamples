import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:sizechnge/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => contsize(),
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
    return Scaffold(
      appBar: AppBar(),

      body: Consumer<contsize>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              children: [
                Container(
                  height: value.height,
                  width: value.width,
                  color: Colors.amber,
                ),
                Gap(30),
                ElevatedButton(
                    onPressed: () {
                      value.big();
                    },
                    child: Text("big")),
                Gap(30),
                ElevatedButton(
                    onPressed: () {
                      value.small();
                    },
                    child: Text("small"))
              ],
            ),
          );
        },
      ),
    );
  }
}
