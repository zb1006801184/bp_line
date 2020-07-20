import 'package:flutter/material.dart';
import '../demo/list_view.dart';
import '../demo/list_view.dart';
import 'test.dart';
import 'package:bp_online/demo/list_view.dart';
import 'package:bp_online/navigator/tab_navigator.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text("ListView"),onTap: () {
                  Navigator.pushNamed(context, '/listView');
          },),
          ListTile(title: Text("TextDemo"), onTap: () {
                  Navigator.pushNamed(context, '/textDemo');
          }),
          ListTile(title: Text("ListView"), onTap: () {}),
          ListTile(title: Text("ListView"), onTap: () {}),
          ListTile(title: Text("ListView"), onTap: () {}),
        ],
      ),
    );
  }
}
