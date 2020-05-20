import 'package:dio/dio.dart';

class QiNetwork extends Object {
  static Future<Response> request({String urlString}) async {
    // https://api.github.com/orgs/flutterchina/repos
    Response response = await Dio().get(urlString);
    return response;
  }
}
