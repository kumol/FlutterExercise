import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;
  Result(this.result, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
      children: [
        Text(
          "You have done well your result is " + result.toString(),
        ),
        RaisedButton(
          onPressed: resetQuiz,
          child: Text("Reset quiz"),
        )
      ],
    ));
  }
}
