import 'package:flutter/material.dart';
import 'package:flutter_assignment/my_text.dart';

class TextControl extends StatelessWidget {
  final List<String> textList;
  final int counter;
  final VoidCallback nextCounter;

  const TextControl(this.textList, this.counter, this.nextCounter, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(textList[counter]),
        ElevatedButton(onPressed: nextCounter, child: const Text('next'))
      ],
    );
  }
}
