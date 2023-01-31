import 'package:flutter/material.dart';
import 'package:flutter_assignment/text_control.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final _text = ['text 1', 'text 2', 'text 3'];

  var _index = 0;

  void _resetIndex() {
    setState(() {
      _index = 0;
    });
  }

  void _nextIndex() {
    setState(() {
      _index = _index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Assignment'),
        ),
        body: _index < _text.length
            ? TextControl(_text, _index, _nextIndex)
            : TextControl(_text, 0, _resetIndex),
      ),
    );
  }
}
