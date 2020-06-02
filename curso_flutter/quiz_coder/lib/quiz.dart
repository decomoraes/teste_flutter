import 'package:flutter/material.dart';
import './gamebutton.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final perguntas;
  final indice;
  final Function(int) questao;
  Quiz({
    @required this.perguntas,
    @required this.indice,
    @required this.questao,
  });
  bool get limite{
   return  indice < perguntas.length;
  }
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = limite ? perguntas[indice]['resposta'] : null;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(question: perguntas[indice]['pergunta']),
          ...respostas.map((t) => GameButton(button: t['texto'], onpressed: () => questao(t['nota']))),
        ],
      ),
    );
  }
}