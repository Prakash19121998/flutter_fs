import 'package:flutter/material.dart';
import 'package:palfinger/config/globals.dart';
import 'rest_api_helper.dart';

class LoginService {
  static Future login({@required String username, String password}) async {
    Map<String, dynamic> body = {"username": username, "password": password};
    dynamic data = await RestAPIHelper.postData(
        path: '/login', headers: Globals.headers(), body: {...body});
    return data;
  }

  static Future googleLogin(
      {@required String username, @required String idToken}) async {
    Map<String, dynamic> body = {"username": username, "idToken": idToken};
    dynamic data = await RestAPIHelper.postData(
        path: '/login/oauth', headers: Globals.headers(), body: {...body});
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

  static Future changePwd(
      {@required String oldPassword, @required String newPassword}) async {
    Map<String, dynamic> body = {
      "oldPassword": oldPassword,
      "newPassword": newPassword
    };

    dynamic data = await RestAPIHelper.postData(
        path: '/customers/changepwd',
        headers: Globals.headers(),
        body: {...body});
    return data;
  }
}
