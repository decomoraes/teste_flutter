import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'tenis de corrida',
      value: 70.7,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'conta de luz',
      value: 70.7,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Despesas Pessoais')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 70,
              child: Card(
                child: Text('Gráfico'),
                elevation: 5,
              ),
            ),
            Column(
                // children: _transactions.map((t) => Text(t.title)).toList()
                children: _transactions.map((t) {
              return Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'R\$${t.value.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple
                          ),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(t.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          Text(t.date.toString(), style: TextStyle(color: Color(0xaa000000)),),
                        ],
                      )
                    ],
                  ));
            }).toList()),
          ],
        ));
  }
}
