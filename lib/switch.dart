import 'package:flutter/material.dart';

class Switchs extends StatefulWidget {
  @override
  _SwitchsState createState() => _SwitchsState();
}

class _SwitchsState extends State<Switchs> {
  var valor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: Text('Receber notificações'),
              value: valor,
              onChanged: (bool value) {
                setState(() {
                  valor = value;
                });
              },
            )
          ],
        ),
      )
    );
  }
}