import 'package:flutter/material.dart';
import 'package:flutter_application/answer.dart';
import './question.dart';

void main(){
  runApp(MyApp());
}
// ddddddddddddddddddd
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // const MyApp({super.key});
  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex = questionIndex+1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What do u want",
      "What is your desire",
      "Which one do u like",
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            "My Application",
            style: TextStyle(fontSize: 38),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Question(questions[questionIndex]),
              Answer(),
              Answer();
              Answer();
            ],
          ),
        ),
      ),
    );
  }
}