import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../pages/home.dart';
import '../pages/randomWords.dart';
import '../pages/layout.dart';
import '../pages/rssReader.dart';
import '../pages/createQR.dart';
import '../pages/userPage.dart';

class Fluro {
  static final router = FluroRouter();

  static Handler _homeHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => Home());
  static Handler _randomWordsHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => RandomWords());
  static Handler _layoutHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => Layout());
  static Handler _rssReaderHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => RssReader());
  static Handler _createQRHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => CreateQR());
  static Handler _userPageHandler = Handler(handlerFunc: 
  (BuildContext context, Map<String, dynamic> params) => UserPage());

 
    static void setupRouter() {
      router.define('/', handler: _homeHandler,);
      router.define('/random-words', handler: _randomWordsHandler,);
      router.define('/layout', handler: _layoutHandler,);
      router.define('/rss-reader', handler: _rssReaderHandler,);
      router.define('/create-qr', handler: _createQRHandler,);
      router.define('/user-page', handler: _userPageHandler,);
    }
}