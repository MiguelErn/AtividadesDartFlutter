import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FittedBox(
                child: Text('teste pequeno', style: TextStyle(fontSize: 20)),
              ),
              FittedBox(
                child: Text('teste médio', style: TextStyle(fontSize: 30)),
              ),
              FittedBox(
                child: Text('teste grande ', style: TextStyle(fontSize: 40)),
              )],
          ),
        ),
      ),
    );
  }
}