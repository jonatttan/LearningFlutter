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
          title: Text(
            'App test',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
          ),
        ),
      ),
    );
  }
}
