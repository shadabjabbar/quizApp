import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final VoidCallback _resetQuiz;
  Result(this.score, this._resetQuiz);

  String get printAnswer {
    String answer;
    if (score <= 4)
      answer = 'You don\'t know Shad as your score is only $score out of 10';
    else if (score > 4 && score <= 7)
      answer =
          'You know him just as a person as your score is only $score out of 10';
    else
      answer =
          'Hurray!! You know him very well as your score is only $score out of 10';
    return answer;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            printAnswer,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset me'),
            textColor: Colors.blue,
            onPressed: _resetQuiz,
          )
        ],
      ),
    );
  }
}
