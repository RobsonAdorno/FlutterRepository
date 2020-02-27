import 'package:flutter/material.dart';

class Hue extends StatefulWidget {
  @override
  _HueState createState() => _HueState();
}

class _HueState extends State<Hue> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  var text = '';
  var senha = '';
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zuera'),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32),
                child: TextFormField(
                  controller: _textEditingController,
                  maxLength: 16,
                  decoration: InputDecoration(
                    labelText: 'Digite usuário'
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(35),
                child: TextFormField(
                  controller: _controllerSenha,
                  maxLength: 8,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Digite a senha',
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.all(32),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      text = _textEditingController.text;
                      senha = _controllerSenha.text;
                    });
                  },
                  child: Text('Enviar', style: TextStyle(color: Colors.white, 
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                  ),
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(32),
                child: Text(text)
              ),
              Padding(
                padding: EdgeInsets.all(32),
                child: Text(senha),
              ),
              Padding(
                padding: EdgeInsets.all(32),
                child: Checkbox(
                  value: flag,
                  onChanged: (bool flagParam) {
                    setState(() {
                      flag = flagParam;
                    });
                  },
                ),
              )
            ],    
          ),
        ),
      ),
    );
  }
}