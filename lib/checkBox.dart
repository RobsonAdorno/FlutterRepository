import 'package:flutter/material.dart';

class CheckBox2 extends StatefulWidget {
  @override
  _CheckBox2State createState() => _CheckBox2State();
}

class _CheckBox2State extends State<CheckBox2> {
  var value = false;
  var valu2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              value: value,
              title: Text('Bla'),
              subtitle: Text('Descricao aleatoria bla2 bla bla'),
              activeColor: Colors.blue,
              selected: false,
              secondary: Icon(Icons.accessible),
              onChanged: (bool valueParam) {
                setState(() {
                  value = valueParam;
                });
              },
            ),

            CheckboxListTile(
              value: valu2,
              onChanged: (bool a) {
                setState(() {
                  valu2 = a;
                });
              },
              title: Text('Aqui é o teste!'),
              subtitle: Text('Blasda laasls dfaf qedae'),
            )
          ],
        ),
      )
    );
  }
}