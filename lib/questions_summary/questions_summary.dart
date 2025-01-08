import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  bool isCorrect (Map<String, Object> item) {
    return item['user_answer'] == item['correct_answer'];
  } 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return QuestionSummaryItem(data);
          },
        ).toList()),
      ),
    );
  }
}
