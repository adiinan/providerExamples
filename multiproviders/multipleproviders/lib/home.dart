import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:multipleproviders/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Provider.of<containercolor>(context);
    final size = Provider.of<containersize>(context);
    final upperandlower = Provider.of<textstyle>(context);

    return Scaffold(
      body: Column(
        children: [
          Text(upperandlower.name),
          ElevatedButton(
              onPressed: () {
                Provider.of<textstyle>(context,listen: false).uppercase();
              },
              child: Text("uppercase")),
          Gap(15),
          ElevatedButton(
              onPressed: Provider.of<textstyle>(context).lowercase,
              child: Text("lowercase")),
          Gap(15),
          Container(
            height: size.height,
            width: size.width,
            color: color.color,
          ),
          Gap(10),
          ElevatedButton(
              onPressed: () {
                Provider.of<containersize>(context,listen: false).big();
              },
              child: Text("big")),
          Gap(10),
          ElevatedButton(
              onPressed: () {
                Provider.of<containersize>(context,listen: false).small();
              },
              child: Text("small")),
          Gap(10),
          ElevatedButton(
              onPressed: () {
                Provider.of<containercolor>(context,listen: false).green();
              },
              child: Text("green")),
          Gap(10),
          ElevatedButton(
              onPressed: () {
                Provider.of<containercolor>(context,listen: false).bluecolor();
              },
              child: Text("blue"))
        ],
      ),
    );
  }
}
