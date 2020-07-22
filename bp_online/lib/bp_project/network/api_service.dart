import 'http_utils.dart';
import 'api_url.dart';
import 'base_result.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class ApiService {

  static Future<Response> login(
      String username, String verification_code) async {

    FormData formData = new FormData.fromMap({
      "mobile": "15070925726",
      "verification_code": "1234",
    });
    Response response = await HttpUtils(headers: {
      "Content-Type": "application/x-www-form-urlencoded",
      "Authorization": "Basic YXBwOmFwcA=="
    }).request("${ApiUrl.LOGIN}?mobile=${username}&verification_code=${verification_code}",method: HttpUtils.POST);
    if (response != null) {
      return response;
    } else {
      return null;
    }
  }
}
