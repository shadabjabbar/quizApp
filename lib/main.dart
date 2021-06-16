import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  var _question = [
    {
      'questionText': 'Which is my favourite Color ?',
      'answer': [
        {'option': 'Black', 'score': 1},
        {'option': 'Red', 'score': 0},
        {'option': 'Yellow', 'score': 0},
        {'option': 'Olive Green', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is my favourite Dish ?',
      'answer': [
        {'option': 'Biryani', 'score': 1},
        {'option': 'Chicken stu', 'score': 0},
        {'option': 'Korma', 'score': 0},
        {'option': 'Butter Chicken', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is my favourite animal ?',
      'answer': [
        {'option': 'Dog', 'score': 1},
        {'option': 'Cat', 'score': 0},
        {'option': 'Rabbit', 'score': 0},
        {'option': 'Cow', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is my favourite Place ?',
      'answer': [
        {'option': 'Paris', 'score': 0},
        {'option': 'Delhi', 'score': 0},
        {'option': 'Switzerland', 'score': 1},
        {'option': 'Greenland', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is my favourite sports ?',
      'answer': [
        {'option': 'Cricket', 'score': 1},
        {'option': 'Hockey', 'score': 0},
        {'option': 'Basketball', 'score': 0},
        {'option': 'Badminton', 'score': 0},
      ],
    },
    {
      'questionText': 'In my free time I am addicted to ?',
      'answer': [
        {'option': 'Instagram', 'score': 1},
        {'option': 'FB', 'score': 0},
        {'option': 'VC', 'score': 0},
        {'option': 'Whatsapp', 'score': 0},
      ],
    },
    {
      'questionText': 'What Shad hate the most ?',
      'answer': [
        {'option': 'Lie', 'score': 1},
        {'option': 'Cheating', 'score': 0},
        {'option': 'Sleeping', 'score': 0},
        {'option': 'Dancing', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the fav hobby of Shad ?',
      'answer': [
        {'option': 'Coding', 'score': 0},
        {'option': 'Singing', 'score': 1},
        {'option': 'Playing Guitar', 'score': 0},
        {'option': 'Exploring', 'score': 0},
      ],
    },
    {
      'questionText': 'Shad wants to become in next 5 years ?',
      'answer': [
        {'option': 'SDE 1', 'score': 1},
        {'option': 'Designer', 'score': 0},
        {'option': 'Youtuber', 'score': 0},
        {'option': 'Singer', 'score': 0},
      ],
    },
    {
      'questionText': 'Shad favourite person to whom he love to talk ?',
      'answer': [
        {'option': 'Tuba', 'score': 1},
        {'option': 'Shivangi', 'score': 0},
        {'option': 'Kush', 'score': 0},
        {'option': 'Shubham', 'score': 0},
      ],
    },
  ];
  void _questionChanger(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _question.length)
      print('We have more Question');
    else
      print('No more Questions for you');
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
    print('Reset Presed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('How Much you know me'),
        ),
        body: _questionIndex == _question.length
            ? Result(_totalScore, _resetQuiz)
            : Quiz(_questionChanger,_questionIndex,_question),
      ),
    );
  }
}
