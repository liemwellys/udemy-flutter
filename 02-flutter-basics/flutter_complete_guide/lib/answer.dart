import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  /**
   * set selectHandler as store for pointer of the function
   * 
   * NOTE: VoidCallback tells Flutter that will get
   * a function that does not accept any arguments
   * so that receives no input and also won't return anything.
   */
  final VoidCallback selectHandler;
  final String answerText;

  // store void callback functions in selectHandler
  // when class is instantiated
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          // use predefined colors available on flutter/material.dart package
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
