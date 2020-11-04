import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2.レイアウトの実験'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.blue,
              height: 300.0,
            )
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              height: 300.0,
            )
          )
        ]
      ),
    );
  }
}