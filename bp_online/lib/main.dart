import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:bp_online/page_index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Global.init().then((e) {
    debugPaintSizeEnabled = false;  //调试模式
    if (Global.loginState == null || Global.loginState == false) {
      runApp(Login());
    } else {
      runApp(MyApp());
    }
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      initialRoute: '/Person',
      onGenerateRoute: onGenerateRoute,
      routes: routes,
      debugShowCheckedModeBanner: true, //debug标识
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      initialRoute: '/Login',
      routes: routes,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: true, 
    );
  }
}
