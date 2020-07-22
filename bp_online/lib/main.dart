import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:bp_online/page_index.dart';

void main()  async {
  debugPaintSizeEnabled = false; //打开视觉调试开关
      runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: true, //debug标识是否打开
    );
  }
}

