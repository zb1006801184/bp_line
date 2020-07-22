import 'package:flutter/material.dart';
import '../demo/list_view.dart';
import 'test.dart';
import 'package:bp_online/demo/list_view.dart';
import 'package:bp_online/navigator/tab_navigator.dart';
import 'package:flutter/services.dart';
class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        brightness: Brightness.light,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("ListView"),onTap: () {
                  Navigator.pushNamed(context, '/listView');
          },),
          ListTile(title: Text("TextDemo"), onTap: () {
                  Navigator.pushNamed(context, '/textDemo');
          }),
          ListTile(title: Text("LayoutViewDemo"), onTap: () {
            Navigator.pushNamed(context, "/LayoutView");
          }),
          ListTile(title: Text("bp_on_line"), onTap: () {
            Navigator.pushNamed(context, "/Person");
          }),
          ListTile(title: Text("无限加载"), onTap: () {
            Navigator.pushNamed(context, "/TestList");
          }),
          ListTile(title: Text("网络请求"), onTap: () {
            Navigator.pushNamed(context, "/NetWork");
          }),
        ],
      ),
    );
  }
}
