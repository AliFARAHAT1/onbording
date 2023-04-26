import 'package:flutter/material.dart';
import 'package:todoapp/Screens/HomeScreem.dart';
import 'package:todoapp/Screens/OnboardingScreen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.orangeAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
