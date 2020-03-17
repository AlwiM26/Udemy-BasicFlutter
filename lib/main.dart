import 'package:flutter/material.dart';

//  Importing Question.dart file to access the properties
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

//  Root Widget
//  Change the statelesswidget superclass with statefulwidget so we can change any value of a widget
class MyApp extends StatefulWidget {
  @override
  //  Create State for MyApp class
  State<StatefulWidget> createState() => _MyAppState();
}

//  State Widget for MyApp Widget
//  State is used to store all the data that'll be changed
//  Adding _ underscore in variabel or an class will make the class or variabel become private
class _MyAppState extends State<MyApp> {
  //  Maps (called dictionary on another programming language) consisted of key and value
  //  Now the _questions list is a list of maps
  final _questions = [
    {
      'question': 'What\'s your favorite color? ',
      'answers': [
        {'text': 'Black', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'Pink', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favorite music genre ? ',
      'answers': [
        {'text': 'Metal', 'score': 4},
        {'text': 'Punk', 'score': 3},
        {'text': 'Jazz', 'score': 2},
        {'text': 'Pop', 'score': 1},
      ],
    },
  ];
  int questionIndex = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Apps'),
        ),
        //  Column just is a vertical layout, so we can have a multiple widget inside of the body property
        body: questionIndex < _questions.length
            ? Quiz(
                answerHandler: _answerQuestion,
                questionIndex: questionIndex,
                questions: _questions,
              )
            : Result(totalScore, _resetQuiz,)
      ),
    );
  }

  void _answerQuestion(int score) {
    //  When button is pressed, the text will not be change at the exact time
    //  So we have to wrap the change questionIndex inside of setState function to change the value
    //  setState force flutter to re render the apps to change the value
    setState(() {
      questionIndex += 1;
      totalScore += score;
    });
  }

  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;      
    });
  }
}
