import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget
{
  const Quiz({super.key});
  
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz>
{
  @override
  Widget build(context)
  {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 103, 58, 183), Color.fromARGB(255, 156, 39, 176)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}