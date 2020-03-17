import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //  in dart there's a special data type that can store a function
  final Function selectHandler;
  final String answerText;
  
  //  set the constructor to set the selecthandler function
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}