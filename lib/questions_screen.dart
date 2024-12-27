import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  // Defining a variable for current question index
  var currentIndex = 0;
  //Adding method for incrementing currentIndex of answerQuestion
  void answerQuestion() {
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentIndex];
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.deepPurple, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.questionText,
                style: GoogleFonts.ptSerif(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Mapping list of the questionAnswers to a list of AnswerButton
              // Mapping does not change in the list content, it yields another copy
              ...currentQuestion.getShuffled().map((answer) {
                return (AnswerButton(buttonText: answer, onTap: answerQuestion));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
