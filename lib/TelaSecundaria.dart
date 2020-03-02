import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String zuera;

  TelaSecundaria({this.zuera});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela secundária'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child:Container(
        child: Column(
          children: <Widget>[
              Text('Segunda Tela. Pegando o seguinte valor: ${widget.zuera}', style: TextStyle(
                fontSize: 25,
                ),
              ),

              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Primeira tela'),
              )
            ],
          ),
        ),
      )
    );
  }
}