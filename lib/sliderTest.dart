import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double value = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: <Widget>[
            Slider(
              onChanged: (double resul) {
                setState(() {
                  value = resul;
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.orange,
              label: value.toString(),
              divisions: 10,
              value: value,
              max: 10,
              min: 0,
            ),
            Text(value.toString())
          ],
        ),
      ),
    );
  }
}