
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sum/provider.dart';
import 'package:sum/sumpage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Sum(),
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
    final a = TextEditingController();
    final b = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Consumer<Sum>(
        builder: (context, value, child) {
          return Column(
            children: [
              TextFormField(
                controller: a,
              ),
              TextFormField(
                controller: b,
              ),
              ElevatedButton(
                  onPressed: () async {
                    value.setload(true);
                    await Future.delayed(Duration(seconds: 3));
                    value.summ(a.text, b.text);
                    value.setload(false);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => result(),
                        ));
                  },
                  child: value.load
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Text("sum"))
            ],
          );
        },
      ),
    );
  }
}
