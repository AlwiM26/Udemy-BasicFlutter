import 'package:flutter/material.dart';

//  Importing Question.dart file to access the properties
import './question.dart';

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
  //  List of questions with type of String
  List<String> questions = [
    'What\'s your favorite color? ',
    'What\'s your favorite music genre ? ',
  ];
  int questionIndex = 0;

  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Apps'),
        ),
        //  Column just is a vertical layout, so we can have a multiple widget inside of the body property
        body: Column(
          //  Put all the widget that we want inside the square bracket '[]'
          children: [
            Question(
              questions[questionIndex],
            ),
            RaisedButton(
              //  On a button, onPressed property takes a void type function as a arguments
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              //  We also can add inline function on the onpress property
              onPressed: () => print("Question 2 is answered!"),
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () {
                print("Question 3 is Answered!");
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    //  When button is pressed, the text will not be change at the exact time
    //  So we have to wrap the change questionIndex inside of setState function to change the value
    //  setState force flutter to re render the apps to change the value
    setState(() => 1);
  }
}
