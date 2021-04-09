import 'package:flutter/material.dart';

class Globals {
  static String token =
      // 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxMzAsInR5cGUiOiJjdXN0b21lciIsImlhdCI6MTYxNzk1ODQ3Mn0.KuxnvqiMJeIAvnz3sPxq0T2X850Av2BhLvMkMY_cGJs'; //without bills
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoyOCwidHlwZSI6ImN1c3RvbWVyIiwiaWF0IjoxNjE3OTU5MzI2fQ.hicewh49YjU0W-UbiCXetKTOAmtI4XSiykJ_14RzPUk'; //with bills
  static int userid;
  static String transid;
  static String storeid = '108';
  static String billid = '25';
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
