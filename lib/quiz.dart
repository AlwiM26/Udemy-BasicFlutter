import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerHandler;

  Quiz({
    @required this.questions,
    @required this.answerHandler,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //  Put all the widget that we want inside the square bracket '[]'
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        //  On dart we can send a function as a argument to a class (which is a widget in this case)
        //  passing a function to another class or widget called Callback
        //  instead of hardcoded all the answer into all the button, we can use map function
        //  The ... notation is spread operator, because maps returning a list of a new button
        //  it'll create an error because column have to have a children inside
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerHandler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
