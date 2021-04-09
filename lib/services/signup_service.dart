import 'package:flutter/material.dart';
import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/globals.dart';

class SignUpService {
  static Future signup(
      {@required String email,
      @required String firstName,
      @required String lastName,
      @required String password,
      @required String image}) async {
    Map<String, dynamic> body = {
      "password": password,
      "email": email,
      "image": image,
      "first_name": firstName,
      "last_name": lastName
    };

    dynamic data = await RestAPIHelper.postData(
        path: '/signup', headers: Globals.headers(), body: {...body});
    return data;
  }
}
