import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: "My app title"));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            this.title,
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
