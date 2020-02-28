import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
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
              Text('Segunda Tela', style: TextStyle(
                fontSize: 25,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}