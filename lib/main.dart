import 'package:flutter/material.dart';
import './randomWords.dart';
import './layout.dart';
import './rssReader.dart';
import './createQR.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Flutter テスト用',
      initialRoute: '/',
      routes: {
        '/': (context) => RouteView(),
        '/random-words': (context) => RandomWords(),
        '/layout': (context) => Layout(),
        '/rss-reader': (context) => RssReader(),
        '/create-qr': (context) => CreateQR(),

      },
    );
  }
}

class RouteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('色々なWidgetへのリンク'),
        ),
        body: Column(
            children: [
              FlatButton(
                child: Text('1.無限のリスト'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, '/random-words');
                },
              ),
              FlatButton(
                child: Text('2.レイアウト'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, '/layout');
                },
              ),
              FlatButton(
                child: Text('3.RSS-READER'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, '/rss-reader');
                },
              ),
              FlatButton(
                child: Text('4.QRコード作成'),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.pushNamed(context, '/create-qr');
                },
              ),
            ]
        )
    );
  }
}