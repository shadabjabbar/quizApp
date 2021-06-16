
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _questionChanger;
  final _questionIndex;
  final List<Map<String, Object>> _question;
  Quiz(this._questionChanger, this._questionIndex, this._question);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          _question[_questionIndex]['questionText'] as String,
        ),
        ...(_question[_questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => _questionChanger(answer['score']),
              answer['option'] as String);
        }).toList(),
      ],
    );
  }
}
