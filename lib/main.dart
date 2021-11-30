import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  initState() {
    print('call buildddd');
  }

  @override
  State<StatefulWidget> createState() {
    print("calll call my before ");
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _question = const [
    {
      'questionsText': 'What\'s questio first',
      'answer': [
        {'text': 'red', 'score': 5},
        {'text': 'yelloow', 'score': 15},
        {'text': 'Green', 'score': 8},
        {'text': 'blue', 'score': 4},
      ]
    },
    {
      'questionsText': 'What\'s questio second',
      'answer': [
        {'text': 'gray', 'score': 5},
        {'text': 'black', 'score': 15},
        {'text': 'orrange', 'score': 5},
        {'text': 'sky', 'score': 20},
      ]
    }
  ];

  Widget build(BuildContext context) {

    void _answerQuestion(int score ) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;

      });
    }
    void _resetQuize(){
      setState(() {
        _totalScore = 0;
        _questionIndex = 0;
      });
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Top bar'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                answerQuestion: _answerQuestion,
                index: _questionIndex,
              )
            : Result(_totalScore,_resetQuize),
      ),
    );
  }
}
