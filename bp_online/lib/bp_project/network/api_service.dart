import 'http_utils.dart';
import 'api_url.dart';
import 'base_result.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class ApiService {
//登录
  static Future<Response> login(
      String username, String verification_code) async {
    Response response = await HttpUtils(headers: {
      "Authorization": "Basic YXBwOmFwcA=="
    }).request("${ApiUrl.LOGIN}?mobile=${username}&verification_code=${verification_code}",method: HttpUtils.POST);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }
}
