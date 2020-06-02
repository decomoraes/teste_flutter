import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _indice = 0;
  int _score = 0;

  void _questao(int _scoreAdd) {
    setState(() {
      _indice++;
      _score += _scoreAdd;
    });
    print(_score);
  }

  void _restartGame() {
    setState(() {
      _indice = 0;
      _score = 0;
    });
  }

  final List<Map<String, Object>> _perguntas = [
    {
      'pergunta': 'Qual é a sua cor favorita?',
      'resposta': [
        {'texto': 'Vermelho', 'nota' : 28},
        {'texto': 'Azul', 'nota' : 21},
        {'texto': 'Verde', 'nota' : 14},
        {'texto': 'Amarelo', 'nota' : 7},
      ]
    },
    {
      'pergunta': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Cachorro', 'nota' : 28},
        {'texto': 'Gato', 'nota' : 21},
        {'texto': 'Passarinho', 'nota' : 14},
        {'texto': 'Tartaruga', 'nota' : 7},
      ]
    },
    {
      'pergunta': 'Qual o seu instrutor favorito?',
      'resposta': [
        {'texto': 'Guanabara', 'nota' : 28},
        {'texto': 'Fernanda', 'nota' : 21},
        {'texto': 'Lucia', 'nota' : 14},
        {'texto': 'Pipa', 'nota' : 7},
      ]
    },
  ];

  bool get limite{
   return  _indice < _perguntas.length;
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Game')),
      body: limite ? Quiz(perguntas: _perguntas, indice: _indice, questao: _questao) : Result(score: _score, restartGame: _restartGame,)
    ));
  }
}