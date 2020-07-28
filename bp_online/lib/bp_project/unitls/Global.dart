import 'package:bp_online/page_index.dart';
import 'dart:ui';
import 'dart:convert';
const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static SharedPreferences _prefs;
  static LoginPerson profile = LoginPerson();
  // 网络缓存对象
  // static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");
  static bool loginState;
  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
     loginState = _prefs.getBool(DataName.LOGINSTATE);
    if (loginState != null && loginState ==true) {
      print("已登录");
    } else {
      print("未登录");
    }
    var _profile = _prefs.getString(DataName.PERSONINFO);
    if (_profile != null) {
      try {
        profile = LoginPerson.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
      }
  }

  // 如果没有缓存策略，设置默认缓存策略
  //   profile.cache = profile.cache ?? CacheConfig()
  //     ..enable = true
  //     ..maxAge = 3600
  //     ..maxCount = 100;

  //   //初始化网络请求相关配置
  //   Git.init();
  // }

  // 持久化Profile信息
  // static saveProfile() =>
  //     _prefs.setString("profile", jsonEncode(profile.toJson()));
//设备宽高
 static double ksWidth = window.physicalSize.width / 2;
 static double ksHeight = window.physicalSize.height / 2;
//导航栏的高度
 static double ksToolbarHeight = kToolbarHeight;
//状态栏高度
static double ksStateHeight = MediaQueryData.fromWindow(window).padding.top;

}
