import 'package:bp_online/bp_project/models/form_data_model.dart';
import 'package:bp_online/bp_project/models/from_list_model.dart';

import 'http_utils.dart';
import 'api_url.dart';
import 'base_result.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:bp_online/page_index.dart';

class ApiService {
//登录
  static Future<LoginPerson> login(
      String username, String verification_code) async {
    Response response = await HttpUtils(headers: {
      "Authorization": "Basic YXBwOmFwcA=="
    }).request("${ApiUrl.LOGIN}?mobile=${username}&verification_code=${verification_code}",method: HttpUtils.POST);
    if (response != null) {
      var responseData = jsonDecode(response.data);
      LoginPerson data = LoginPerson.fromJson(responseData["datas"]);
      return data;
    } else {
      return null;
    }
  }

//获取所有项目列表
static Future<List<FormListModel>> getAllFromData() async {
    Response response = await HttpUtils(headers: {
      "Authorization": "Bearer ${Global.profile.accessToken}"
    }).request(ApiUrl.ALL_FROM,method: HttpUtils.GET);
    if (response != null) {
      var responseData = jsonDecode(response.data);
      List listData = responseData["data"];
      List data = [];
      if (listData.length < 1) {
        return data;
      }
    // for (var item in listData) {
    //   FormListModel model = FormListModel.fromJson(item);
    //   data.add(model);
    // }
      return List()
        ..addAll(( listData ?? []).map((o) => FormListModel.fromJson(o)));
    } else {
      return null;
    }
  }

  //提交列表
  // static Future<LoginPerson> subCommitAllFromData() async {
  //   Response response = await HttpUtils(headers: {
  //     "Authorization": "Bearer ${Global.profile.accessToken}"
  //   }).request(ApiUrl.ALL_FROM,method: HttpUtils.GET);
  //   if (response != null) {
  //     var responseData = jsonDecode(response.data);
  //     LoginPerson data = LoginPerson.fromJson(responseData["datas"]);
  //     return data;
  //   } else {
  //     return null;
  //   }
  // }

}

