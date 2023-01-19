import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final marks the value will never change
  // after initialization in constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // wrap the widget with container
    return Container(
      // set the width as much as it get using double.infinity
      width: double.infinity,

      // set spacing around the container
      // currently use 'all' for set top, right, bottom, left for 10
      margin: EdgeInsets.all(10),

      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
