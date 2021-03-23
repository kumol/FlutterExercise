import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  final Function answerCounter;
  final String answerText;
  Answer(this.answerCounter, this.answerText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("answerText"),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerCounter,
      ),
    );
  }
}
