import 'package:flutter/material.dart';
import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/globals.dart';

class BillService {
  static Future billListByUser() async {
    List<dynamic> data =
        await RestAPIHelper.getData(path: '/bills', headers: Globals.headers());
    return data;
  }

  static Future billListByStore() async {
    List<dynamic> data = await RestAPIHelper.getData(
        path: '/bills',
        query: {"storeid": Globals.storeid},
        headers: Globals.headers());
    return data;
  }

  static Future billListByDate(
      {@required String fromDate, @required String toDate}) async {
    List<dynamic> data = await RestAPIHelper.getData(
        path: '/bills/filter',
        query: {"fromdate": fromDate, "todate": toDate},
        headers: Globals.headers());
    return data;
  }

  static Future getSingleBill() async {
    dynamic data = await RestAPIHelper.getData(
        path: '/bills/id/${Globals.billid}', headers: Globals.headers());
    return data;
  }

  static Future latestBillList({@required String transid}) async {
    List<dynamic> data = await RestAPIHelper.getData(
        path: '/bills/latest',
        query: {"transid": transid},
        headers: Globals.headers());
    return data;
  }
}
