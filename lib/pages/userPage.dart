import 'package:flutter/material.dart';
// import '../api/userApi.dart';
import '../models/user.dart';

class UserPage extends StatefulWidget {

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> users;

  // _UserPageState() {
  //   getUser();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APIによるデータ取得'),
      ),
      body: Text(users[0].name)
    );
  }
}

// void getUser() async {
//       setState(() {
//       _item = SomeObject(
//         id: decodedBody['id'],
//         title: decodedBody['title'],
//         // ...
//       );
//     });
// }