import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {

  final String title; //上位Widgetから受け取りたいデータ
  final String url; //上位Widgetから受け取りたいデータ

  LinkButton({this.title, this.url}); //コンストラクタ
  @override
  Widget build(BuildContext context) {
    return FlatButton(
                child: Text(this.title),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, this.url);
                  // Navigator.pushReplacementNamed(context, this.url);
                },
              );
  }
}
