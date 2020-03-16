import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//  Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Apps"),
        ),
        body: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
