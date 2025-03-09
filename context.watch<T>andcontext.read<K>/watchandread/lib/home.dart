import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:watchandread/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text("the current number is ${context.watch<counterr>().counter}"),
            // Selector<counterr, int>(
            //     builder: (context, value, child) {
            //       return Text("$value");
            //     },
            //     selector: (p0, p1) => p1.counter),
            Selector<counterr,int>(builder: (context, value, child) {
              return Text("the current value is $value");
            }, selector:(p0, p1) =>p1.counter,),
            Gap(10),
            ElevatedButton(
                onPressed: () {
                  context.read<counterr>().increment();
                },
                child: Icon(Icons.add)),
            Gap(10),
            ElevatedButton(
                onPressed: () {
                  context.read<counterr>().decrement();
                },
                child: Icon(Icons.minimize)),
            Gap(10),
            ElevatedButton(
                onPressed: () {
                  context.read<counterr>().reset();
                },
                child: Icon(Icons.restart_alt))
          ],
        ),
      ),
    );
  }
}
