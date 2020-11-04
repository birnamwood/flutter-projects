import 'package:flutter/material.dart';
import '../components/home/linkButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('色々なWidgetへのリンク'),
        ),
        body: Column(
            children: <Widget>[
              LinkButton(title: '0.無限のリスト', url: '/random-words'),
              LinkButton(title: '1.レイアウト', url: '/layout'),
              LinkButton(title: '2.RSS-READER', url: '/rss-reader'),
              LinkButton(title: '3.QRコード作成', url: '/create-qr'),
              LinkButton(title: '4.APIによるデータ取得', url: '/user-page'),
            ]
        )
    );
  }
}