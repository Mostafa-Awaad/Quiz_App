class QuizQuestion {
  const QuizQuestion({
    required this.questionText,
    required this.questionAnswers,
  });
  final String questionText;
  final List<String> questionAnswers;

  // Creating a method to create shuffle for the questionAnswers list
  // Creating a shuffle is essential in the app case because the first item in questionAnswers list is 
  // the correct answer, so the content of the original list must be kept as it is, but for viewing, making 
  // a shuffle for a copy of the original list, will help for changing order of the items in questionAnswers list

  List<String> getShuffled (){
    // Making a copy of questionAnswers and assign it to quesAnwersCopy defined list
    final quesAnswersCopy = List.of(questionAnswers);
    // shuffle function returns void, so method is called and at the end of the getShuffled method
    // quesAnswerCopy is return
    quesAnswersCopy.shuffle();
    return (quesAnswersCopy);
  }
}
