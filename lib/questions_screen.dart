import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return Container(
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
            children: [
              const Text(
                "Questions",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              AnswerButton(
                buttonText: 'Answer1',
                onTap: () {},
              ),
              AnswerButton(
                buttonText: 'Answer2',
                onTap: () {},
              ),
              AnswerButton(
                buttonText: 'Answer3',
                onTap: () {},
              ),
              AnswerButton(
                buttonText: 'Answer4',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
