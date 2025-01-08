import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier(this.questionIndex, this.correctAnswer, {Key? key});
  final int questionIndex;
  final bool correctAnswer;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +1;
    return Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: correctAnswer
                ? const Color.fromARGB(255, 8, 155, 200)
                : const Color.fromARGB(255, 216, 51, 172),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            questionNumber.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        );
  }
}