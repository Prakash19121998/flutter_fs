import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:palfinger/config/project_strings.dart';
import 'package:palfinger/exceptions.dart';
import 'package:http/http.dart' as http;

class RestAPIHelper {
  static Future getData(
      {@required String path,
      Map<String, dynamic> query,
      dynamic headers}) async {
    http.Response response =
        await http.get(Uri.https(serverName, path, query), headers: headers);

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
    http.Response response = await http.post(Uri.https(serverName, path, query),
        headers: headers, encoding: encoding, body: json.encode(body));

    if (response.statusCode == 200 || response.statusCode == 201)
      return jsonDecode(response.body);
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else if (response.statusCode == 410)
      throw DataExpiredException("Data Expired Exception");
    else
      throw Exception("Something Went Wrong");
  }

  static Future putData(
      {@required String path,
      Map<String, dynamic> query,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.put(Uri.https(serverName, path, query),
        headers: headers, encoding: encoding, body: json.encode(body));

    if (response.statusCode == 200 || response.statusCode == 201)
      return 'success';
    else if (response.statusCode == 401)
      throw NotAuthorizedException("Not Authorized Exception");
    else if (response.statusCode == 404)
      throw NotFoundException("Not Found Exception");
    else if (response.statusCode == 409)
      throw DataConflictException("Data Conflict Exception");
    else
      throw Exception("Something Went Wrong");
  }

  static Future putFileData(
      {@required var url,
      @required dynamic body,
      dynamic headers,
      dynamic encoding}) async {
    http.Response response = await http.put(Uri.parse(url),
        headers: headers, encoding: encoding, body: body);

    if (response.statusCode == 200 || response.statusCode == 201)
      return response.body;
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
      Uri.https(serverName, path, query),
      headers: headers,
      encoding: encoding,
    );

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
