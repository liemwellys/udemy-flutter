import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  // runs our Flutter app once the app booted up
  // take our widget tree and draw something onto the screen
  // that's based on that tree,
  runApp(MyApp());
}

// turn our class that can be run by Flutter
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// State<MyApp> tells _MyAppState is belongs to MyApp
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // execute changing state using setState(() {})
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  // `BuildContext` is a special object type provided by Flutter
  // in the material.dart file and this context object is
  // of that type and we get it automatically by Flutter.

  // Widget Describes the configuration for an [Element].
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      // home is core widget which Flutter will bring onto the screen
      // Scaffold is base page design,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            // use custom widget for split into smaller widget
            // makes rebuilds more efficient & easier to maintain code
            Question(
              // alternative syntax: questions.elementAt(1),
              questions[_questionIndex],
            ),

            // pass function's pointer to the Answer Widget
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
