import 'package:flutter/material.dart';
import './randomWords.dart';
import './layout.dart';
import './rssReader.dart';

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
        '/': (context) => _routeView(),
        '/random-words': (context) => RandomWords(),
        '/layout': (context) => Layout(),
        '/rss-reader': (context) => RssReader(),

      },
    );
  }
}

class _routeView extends StatelessWidget {
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

            ]
        )
    );
  }
}