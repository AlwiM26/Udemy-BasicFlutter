import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    if (score >= 5) {
      return "You're a madlad";
    } else {
      return "You're pathetic!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //  shortcut to refactor / wrap with other widget
      //  Ctrl + Shift + R
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text("Restart"),
            onPressed: resetHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
