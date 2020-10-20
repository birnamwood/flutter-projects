import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class CreateQR extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QRコード生成'),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            Text('QRコードの生成テスト'),
            QrImage(
              data: 'FlutterでQRコードを生成しました。',
              size: 200,
            ),
          ]
        )
      ),
    );
  }
}
