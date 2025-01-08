import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';

class QuestionSummaryItem extends StatelessWidget {
  const QuestionSummaryItem(this.summaryDataItem,
      {super.key});
  final Map<String, Object> summaryDataItem;
  
  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = summaryDataItem['user_answer'] == summaryDataItem['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(summaryDataItem['question_index'] as int, isCorrectAnswer),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                summaryDataItem['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                summaryDataItem['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 209, 123, 224),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                summaryDataItem['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 13, 171, 182),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
