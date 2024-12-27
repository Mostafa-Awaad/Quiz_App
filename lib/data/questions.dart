import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    questionText: 'What are the main building blocks of Flutter UIs?',
    questionAnswers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    questionText: 'How are Flutter UIs built?',
    questionAnswers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    questionText: 'What\'s the purpose of a StatefulWidget?',
    questionAnswers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    questionText:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    questionAnswers: [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    questionText: 'What happens if you change data in a StatelessWidget?',
    questionAnswers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    questionText: 'How should you update data inside of StatefulWidgets?',
    questionAnswers: [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
