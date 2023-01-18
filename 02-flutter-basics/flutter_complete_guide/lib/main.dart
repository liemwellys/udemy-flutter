import 'package:flutter/material.dart';

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
    // TODO: implement createState
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
            Text(
              // questions.elementAt(1),
              questions[_questionIndex],
            ),

            // set null onPressed for avoid error since no method currently developed
            ElevatedButton(
              // pass the void function name to `onPressed` without giving ()
              // this will pass the function as pointer & not execute function
              // before the button
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),

            ElevatedButton(
              // set anonymous functions in onPressed
              // use anonymous functions when only need in this one place
              // and never calling it from anywhere else in the application
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer 2'),
            ),

            ElevatedButton(
              // anonymous function with curly braces
              onPressed: () {
                // ... do something here
                print('Answer 3 Chosen');
              },
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
