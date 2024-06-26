import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(name: 'Mohammed'));
}

class MyApp extends StatefulWidget {
  final String name;
  const MyApp({Key? key, this.name = ''}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salary = 2000;

  void increasingSalary(int value) {
    setState(() {
      this.salary += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          increasingSalary(50);
          print('salary: $salary');
        },
        child: Text(
          'The ${widget.name} salary is, and salary $salary',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
