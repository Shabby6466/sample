import 'package:flutter/material.dart';
import 'package:first_app_after_exams/home.dart';
import 'package:first_app_after_exams/counter.dart'; // Import CounterApp

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterApp(), // Provide an instance of CounterApp
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
