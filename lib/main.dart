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
        appBar: AppBar(
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: const Text('Sim')),
                ElevatedButton(onPressed: (){}, child: const Text('Não')),
                ElevatedButton(onPressed: (){}, child: const Text('Talvez')),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 20, color: Colors.pink),
                  Container(height: 20, color: Colors.black),
                  Container(height: 1000, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}