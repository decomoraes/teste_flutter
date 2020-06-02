import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final dynamic question;
  Question({this.question});
  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}