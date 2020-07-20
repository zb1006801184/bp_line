import 'package:bp_online/page/dis.dart';
import 'package:bp_online/page/home.dart';
import 'package:flutter/material.dart';
import 'navigator/tab_navigator.dart';
import 'package:flutter/material.dart';
import 'page/test.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) =>  Bpline(),
        '/dis': (BuildContext context) =>  Dis(),
        '/test': (BuildContext context) =>  Test(),
      },
    );
  }
}

