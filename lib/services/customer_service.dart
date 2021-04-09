import 'package:flutter/material.dart';
import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/globals.dart';

class CustomerService {
  static Future getCustomer() async {
    dynamic data = await RestAPIHelper.getData(
        path: '/customers', headers: Globals.headers());
    return data;
  }

  static Future editCustomer(
      {@required String firstName,
      @required String lastName,
      @required String image}) async {
    Map<String, dynamic> body = {
      "image": image,
      "first_name": firstName,
      "last_name": lastName
    };
    dynamic data = await RestAPIHelper.putData(
        path: '/customers', headers: Globals.headers(), body: {...body});
    return data;
  }

  static Future deleteCustomer() async {
    dynamic data = await RestAPIHelper.deleteData(
        path: '/customers', headers: Globals.headers());
    return data;
  }
}
