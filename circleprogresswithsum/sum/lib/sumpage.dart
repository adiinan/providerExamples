
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sum/provider.dart';

class result extends StatelessWidget {
  const result({super.key});

  @override
  Widget build(BuildContext context) {
    final a= Provider.of<Sum>(context);
    return Scaffold(
      body: Center(
        child: Text("the sum is ${a.sum}"),
      ),
    );
  }
}