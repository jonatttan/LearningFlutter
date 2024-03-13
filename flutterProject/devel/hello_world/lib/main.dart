import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo teste'),
        ),
        body: Center(
          child: Text(
            'Hello world!',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
      ),
    ),
  );
}
