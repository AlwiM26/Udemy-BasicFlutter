import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//  Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    //  List of questions with type of String
    List<String> questions = [
      'What\'s your favorite color? ',
      'What\'s your favorite music genre ? ',
      'What\'s your favorit movie genre ? '
    ];
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Apps'),
        ),
        //  Column just is a vertical layout, so we can have a multiple widget inside of the body property
        body: Column(
          //  Put all the widget that we want inside the angle bracket '[]'
          children: [
            Text(questions[0]),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 3"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 4"),
            ),
          ],
        ),
      ),
    );
  }
}
