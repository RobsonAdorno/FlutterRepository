import 'package:flutter/material.dart';

class RadioButtons extends StatefulWidget {
  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  var radioL = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text('Masculino'),
              value: 'm',
              groupValue: radioL,
              onChanged: (value) {
                setState(() {
                  radioL = value;
                });
              },
            ),

             RadioListTile(
              title: Text('Feminino'),
              value: 'f',
              groupValue: radioL,
              onChanged: (value) {
                setState(() {
                  radioL = value;
                });
              },
            ),

            Text(radioL)
          ],
        ),
      )
    );
  }
}