import 'package:flutter/material.dart';

void main() {
  // runs our Flutter app once the app booted up
  // take our widget tree and draw something onto the screen
  // that's based on that tree,
  runApp(MyApp());
}

// turn our class that can be run by Flutter
class MyApp extends StatelessWidget {
  // `BuildContext` is a special object type provided by Flutter
  // in the material.dart file and this context object is
  // of that type and we get it automatically by Flutter.

  // Widget Describes the configuration for an [Element].
  Widget build(BuildContext context) {
    // home is core widget which Flutter will bring onto the screen
    return MaterialApp(
      home: Text('Hello'),
    );
  }
}
