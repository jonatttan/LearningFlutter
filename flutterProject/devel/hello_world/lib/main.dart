import 'package:flutter/material.dart';

void main() {
  const int val = 10;

  runApp(const MyApp(title: "My app title", value: val));
}

class MyApp extends StatelessWidget {
  final String title;
  final int value;

  const MyApp({Key? key, this.title = '', this.value = 0}) : super(key: key);

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
            'Hello World! The value is ' + this.value.toString(),
            style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
          ),
        ),
      ),
    );
  }
}
