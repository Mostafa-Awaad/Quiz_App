import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/models/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //Defining a nullable widget to hold the active screen
  //Widget? activeScreen;
  var activeScreen = 'start-screen';
  // Declaring a list to hold the examiner selected answers;
  List<String> _selectedAnswers = [];

  void chooseAnswer(String answer)
  {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length){
      setState ((){
        activeScreen = 'results-screen';
        //selectedAnswers = [];
      });
    }
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  //Method to switch the activeScreen
  //setSatate is called to rebuild the widget tree when the activeScreen is changed depending on the user action
  void switchScreen() {
    setState(() {
      //Switching activeScreen to QuestionsScreen
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      //Switching activeScreen to QuestionsScreen
      _selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget? widgetScreen;
    if (activeScreen == 'start-screen') {
      widgetScreen = StartScreen(switchScreen);
    } else if (activeScreen == 'questions-screen') {
      widgetScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    else if (activeScreen == 'results-screen') {
      widgetScreen = ResultsScreen(chosenAnswers: _selectedAnswers, restartQuiz: restartQuiz,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 103, 58, 183),
                Color.fromARGB(255, 103, 39, 176)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
