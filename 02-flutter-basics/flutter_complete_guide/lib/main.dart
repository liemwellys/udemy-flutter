import 'package:flutter/material.dart';

void main() {
  // runs our Flutter app once the app booted up
  // take our widget tree and draw something onto the screen
  // that's based on that tree,
  runApp(MyApp());
}

// turn our class that can be run by Flutter
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Choosen');
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
            Text('The question!'),

            // set null onPressed for avoid error since no method currently developed
            ElevatedButton(
              // pass the void function name to `onPressed` without giving ()
              // this will pass the function as pointer & not execute function
              // before the button pressed
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
