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
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('inicio'),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('meio1'),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('meio2'),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('meio3'),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Fim da Lista'),
            ),
          ],
        ),
      ),
    );
  }
}