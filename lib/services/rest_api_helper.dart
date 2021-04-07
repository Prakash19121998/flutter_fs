import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class RestAPIHelper {
  static Future getData({@required String url, dynamic headers}) async {
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      throw Exception('Failed to get data');
    }
  }

  static Future postData(
      {@required String url,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.post(Uri.parse(url),
        headers: headers, encoding: encoding, body: json.encode(body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      throw Exception('Failed to post data');
    }
  }

  static Future putData(
      {@required String url,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.put(Uri.parse(url),
        headers: headers, encoding: encoding, body: json.encode(body));

    if (response.statusCode == 200 || response.statusCode == 201) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      throw Exception('Failed to put data');
    }
  }
}
