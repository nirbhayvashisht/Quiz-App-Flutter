import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print('Question Answered');
  }
  
  
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite food ?',
      'What\'s your favourite place ?',
      'What\'s your favourite animal ?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],  
        ),
      ),
    );
  }
}
