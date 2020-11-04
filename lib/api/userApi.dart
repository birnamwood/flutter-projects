import 'package:http/http.dart' as http; //httpリクエスト用
import 'dart:async'; //非同期処理用
import 'dart:convert' show json; //JSON用
import '../models/user.dart';

class UserApi {

  static Future<List<User>> getUser() async{ //Future xxx async{} という記法
    const url = "https://localhost:8000/users";
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List<User> users = [];
      Map<String, dynamic> decodedJson = json.decode(response.body);
          decodedJson.forEach((key, value) => 
      users.add(User.fromJson(decodedJson[key]))
    );
      return users;
    }
  }  
}