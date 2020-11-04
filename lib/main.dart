import 'package:flutter/material.dart';

import 'routes/fluro.dart';

void main() {
  Fluro.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Fluro.router.generator
      // routes: {
      //   '/': (context) => Home(),
      //   '/random-words': (context) => RandomWords(),
      //   '/layout': (context) => Layout(),
      //   '/rss-reader': (context) => RssReader(),
      //   '/create-qr': (context) => CreateQR(),
      //   '/user-page': (context) => UserPage(),
      // },
    );
  }
}