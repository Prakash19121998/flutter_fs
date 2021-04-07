import 'package:flutter/material.dart';
import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/project_strings.dart';
import 'package:fs_pos/globals.dart';

class LoginService {
  static Future<String> login(
      {@required String username, @required String password}) async {
    try {
      final url = '$serverName/login';

      Map<String, dynamic> body = {"username": username, "password": password};

      dynamic token = await RestAPIHelper.postData(
          url: url, headers: Globals.headers(), body: {...body});
      return token['token'];
    } catch (e) {
      throw Exception('Issue in login. Contact Admin.');
    }
  }
}
