import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // use custom widget for split into smaller widget
        // makes rebuilds more efficient & easier to maintain code
        Question(
          // use square brackets to access a key in a map
          questions[questionIndex]['questionText'],
        ),

        // pass function's pointer to the Answer Widget
        // use map to transform list of questions into list of Answer Widget
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
