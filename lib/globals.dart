import 'package:flutter/material.dart';

class Globals {
  static String token = '';
  static int userid;
  static String usertype = '';
  static RouteObserver<PageRoute> routeObserver =
      new RouteObserver<PageRoute>();

  // static dynamic headers = {
  //   "accept": "application/json",
  //   "content-type": "application/json",
  //   "Authorization": "Bearer ${Globals.token}"
  // };
  static dynamic headers() {
    return {
      "accept": "application/json",
      "content-type": "application/json",
      "Authorization": "Bearer ${Globals.token}"
    };
  }

  static dynamic adminHeaders() {
    return {
      "accept": "application/json",
      "content-type": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIwIiwic2lkIjoiMyIsInR5cGUiOiJBIn0.JUWK1M255DXkawb1mCnUT6awmxifq-PmYXEWMrp4bIU"
    };
  }
}
