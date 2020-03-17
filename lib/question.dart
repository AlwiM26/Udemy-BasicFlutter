import 'package:flutter/material.dart';

//  Creating custom widget that can be used in other class
class Question extends StatelessWidget {
  final String questionText;

  //  Creating a constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  Width is a property of a container widget, with the double.infinity mean the width of the container
      //  will be the same as the width of our apps screen
      width: double.infinity,
      //  In margin property, EdgeInsets is a constructor to add margin
      //  all set all 4 direction margin
      //  only, will set margin on the given direction, and many more
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
