import 'package:flutter/material.dart';
import '../demo/list_view.dart';
import 'test.dart';
import 'package:bp_online/demo/list_view.dart';
import 'package:bp_online/navigator/tab_navigator.dart';
import 'package:flutter/services.dart';
import 'package:bp_online/page_index.dart';

import 'dart:async';

class Home extends StatelessWidget {
    // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
   bool login = false;
    // Future<void> requestLoginSate() async {
    //     final SharedPreferences prefs = await _prefs;
    //   login = await LoginUnitls.getState();
            
    // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: login? Text("首页"):Text("首页11"),
        brightness: Brightness.light,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("ListView"),
            onTap: () {
              Navigator.pushNamed(context, '/listView');
            },
          ),
          ListTile(
              title: Text("TextDemo"),
              onTap: () {
                Navigator.pushNamed(context, '/textDemo');
              }),
          ListTile(
              title: Text("LayoutViewDemo"),
              onTap: () {
                Navigator.pushNamed(context, "/LayoutView");
              }),
          ListTile(
              title: Text("bp_on_line"),
              onTap: () {
                Navigator.pushNamed(context, "/Person");
              }),
          ListTile(
              title: Text("无限加载"),
              onTap: () {
                Navigator.pushNamed(context, "/TestList");
              }),
          ListTile(
              title: Text("网络请求"),
              onTap: () {
                Navigator.pushNamed(context, "/NetWork");
              }),
        ],
      ),
    );
  }
}
