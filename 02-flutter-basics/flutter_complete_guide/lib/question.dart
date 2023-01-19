import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final marks the value will never change
  // after initialization in constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
