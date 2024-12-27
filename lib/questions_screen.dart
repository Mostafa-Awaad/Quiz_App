import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    var currentQuestion = questions[0];
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
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Mapping list of the questionAnswers to a list of AnswerButton
              // Mapping does not change in the list content, it yields another copy
              ...currentQuestion.getShuffled().map((answer) {
                return (AnswerButton(buttonText: answer, onTap: () {}));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
