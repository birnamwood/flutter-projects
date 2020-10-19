import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2.レイアウトの実験'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }
}