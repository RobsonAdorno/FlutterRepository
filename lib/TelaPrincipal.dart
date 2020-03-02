import 'package:flutter/material.dart';
import 'package:haha_app/TelaSecundaria.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Principal'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(62),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context,'/secundaria');
              },
              child: Text('Ir para a segunda tela!'),
            )
          ],
        ),
      ),
    );
  }
}