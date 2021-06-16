import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _questionChanger;
  String answerOption;
  Answer(this._questionChanger, this.answerOption);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: _questionChanger,
        child: Text(answerOption),
        color:Colors.blue,
      ),
    );
  }
}
