import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:upperandlower/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<lowerandupper>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              children: [
                Text(value.text),
                Gap(10),
                ElevatedButton(
                    onPressed: () {
                      value.lowercase();
                    },
                    child: Text("toLowerCase")),
                Gap(10),
                ElevatedButton(
                    onPressed: () {
                      value.uppercase();
                    },
                    child: Text("toUpperCase")),
                    Gap(10),
              ],
            ),
          );
        },
      ),
    );
  }
}
