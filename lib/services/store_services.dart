import 'package:fs_pos/services/rest_api_helper.dart';
import 'package:fs_pos/globals.dart';

class StoreService {
  static Future getStore() async {
    dynamic data = await RestAPIHelper.getData(
        path: '/stores', headers: Globals.headers());
    return data;
  }
}
