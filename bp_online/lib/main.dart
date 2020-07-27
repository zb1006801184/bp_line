import 'package:flutter/material.dart';
import 'routes.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:bp_online/page_index.dart';

// void main() {
//   debugPaintSizeEnabled = false; //打开视觉调试开关
//   runApp(MyApp());

// }
// void main() => Global.init().then((e) => {
//     WidgetsFlutterBinding.ensureInitialized(),
//       debugPaintSizeEnabled = false, //打开视觉调试开关
//     }).then((e) => {
//             runApp(MyApp()),
//     });
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Global.init().then((e) {
    debugPaintSizeEnabled = true;  //调试模式
    if (Global.loginState == null || Global.loginState == false) {
      runApp(Login());
    } else {
      runApp(MyApp());
    }
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: !Global.isRelease, //debug标识
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      initialRoute: '/Login',
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: true, 
    );
  }
}
