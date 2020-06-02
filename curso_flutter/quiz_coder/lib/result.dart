import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartGame;
  
  Result({
    @required this.score,
    @required this.restartGame,
  });

  String get scoreboard {
    if (score <= 21) {
      return 'Parabéns!';
    } else if (score <= 42) {
      return 'Mandou bem!';
    } else if (score <= 63) {
      return 'Incrível';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(scoreboard), RaisedButton(child: Text('Reiniciar'), onPressed: restartGame)
        ],
      ),
    );
  }
}
