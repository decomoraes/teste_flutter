import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'helvetica-neue-bold'),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset('assets/logo.png'), 
              ),
            Text('PayParty')
            ]
          ),
          
          backgroundColor: Color(0xff2b2b2b),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Next page',
              onPressed: () => {},
            ),
          ],
        ),
      body: Container(
        color: Color(0xff222222),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                color: Color(0xff2b2b2b),
                borderRadius: new BorderRadius.all(Radius.circular(10.0))),
              // color: Color(0xff2b2b2b),
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text('Qual é o seu animal favorito?', style: TextStyle(color: Colors.white,))
            )
          ],
        ),
      ),
      )
    );
  }
}