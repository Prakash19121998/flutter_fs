import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fs_pos/project_strings.dart';

import 'package:http/http.dart' as http;
import 'package:fs_pos/exceptions.dart';

class RestAPIHelper {
  static Future getData(
      {@required String path,
      Map<String, dynamic> query,
      dynamic headers}) async {
    http.Response response =
        await http.get(Uri.http(serverName, path, query), headers: headers);

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 201)
      return jsonDecode(response.body);
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else
      throw Exception("Something Went Wrong");
  }

  static Future postData(
      {@required String path,
      Map<String, dynamic> query,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.post(Uri.http(serverName, path, query),
        headers: headers, encoding: encoding, body: json.encode(body));

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 201)
      return jsonDecode(response.body);
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else
      throw Exception("Something Went Wrong");
  }

  static Future putData(
      {@required String path,
      Map<String, dynamic> query,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.put(Uri.http(serverName, path, query),
        headers: headers, encoding: encoding, body: json.encode(body));

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 201)
      return jsonDecode(response.body);
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else
      throw Exception("Something Went Wrong");
  }

  static Future deleteData(
      {@required String path,
      Map<String, dynamic> query,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.delete(
      Uri.http(serverName, path, query),
      headers: headers,
      encoding: encoding,
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200 || response.statusCode == 201)
      return jsonDecode(response.body);
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else
      throw Exception("Something Went Wrong");
  }
}
