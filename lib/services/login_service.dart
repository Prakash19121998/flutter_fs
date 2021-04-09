import 'package:flutter/material.dart';
import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/globals.dart';

class LoginService {
  static Future login(
      {@required String username, @required String password}) async {
    Map<String, dynamic> body = {"username": username, "password": password};
    dynamic data = await RestAPIHelper.postData(
        path: '/login', headers: Globals.headers(), body: {...body});
    return data;
  }

  static Future forgotPassword({@required String email}) async {
    Map<String, dynamic> body = {"toMail": email};
    dynamic data = await RestAPIHelper.postData(
        path: '/customers/forgetpassword',
        headers: Globals.headers(),
        body: {...body});
    return data;
  }

  static Future changePassword(
      {@required String email,
      @required String otp,
      @required String newPassword}) async {
    Map<String, dynamic> body = {
      "toMail": email,
      "otp": otp,
      "newPassword": newPassword
    };

    dynamic data = await RestAPIHelper.postData(
        path: '/customers/changepassword',
        headers: Globals.headers(),
        body: {...body});
    return data;
  }
}
