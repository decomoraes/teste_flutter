import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final String button;
  final void Function() onpressed;
  GameButton({this.button, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(button),
      onPressed: onpressed
    );
  }
}