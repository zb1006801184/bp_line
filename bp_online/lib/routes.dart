import 'package:flutter/material.dart';
import 'demo/list_view.dart';
import 'demo/list_view.dart';
import 'page/dis.dart';
import 'page/home.dart';
import 'page/test.dart';
import 'demo/list_view.dart';
import 'demo/text_demo.dart';
import 'demo/layout_view.dart';
import 'bp_project/person_page.dart';
import 'demo/network_demo.dart';
import 'bp_project/login/login_page.dart';
import 'bp_project/class/title_page.dart';
import 'bp_project/class/title_page_result.dart';
import 'bp_project/class/plain_des_page.dart';
import 'bp_project/class/result_page.dart';
import 'bp_project/class/technique_page.dart';
import 'bp_project/class/technique_result_page.dart';
import 'bp_project/class/project_model_page.dart';
import 'bp_project/class/project_model_result_page.dart';
import 'bp_project/class/profit_model_page.dart';
import 'bp_project/class/project_stage_page.dart';
import 'bp_project/class/founder_page.dart';
import 'bp_project/class/founder_result_page.dart';
import 'bp_project/class/cofounder_list_page.dart';
final routes = {
  // '/': (context,{arguments}) => Home(),
  '/dis': (context,{arguments}) => Dis(),
  '/test': (context, {arguments}) => Test(),
  '/listView': (context,{arguments}) => simpleListView(),
  '/textDemo': (context,{arguments}) => textDemo(),
  '/LayoutView': (context,{arguments}) => layoutView(),
  '/Person': (context,{arguments}) => Person(),
  '/TestList': (context,{arguments}) => InfiniteListView(),
  '/NetWork': (context,{arguments}) => NetWorkDemo(),
  '/Login': (context,{arguments}) => LoginPageView(),
  '/TitlePage': (context,{arguments}) => TitlePage(),
  '/TitlePageResult': (context,{arguments}) => TitlePageResult(),
  '/PlainDesPage': (context,{arguments}) => PlainDesPage(),
  '/ResultPage': (context,{arguments}) => ResultPage(),
  '/TechniquePage': (context,{arguments}) => TechniquePage(),
  '/TechniqueResultPage': (context,{arguments}) => TechniqueResultPage(),
  '/ProjectModelPage': (context,{arguments}) => ProjectModelPage(),
  '/ProjectModelResultPage': (context,{arguments}) => ProjectModelResultPage(),
  '/ProfitModelPage': (context,{arguments}) => ProfitModelPage(),
  '/ProjectStagePage': (context,{arguments}) => ProjetStagePage(),
  '/FounderPage': (context,{arguments}) => FounderPage(),
  '/FounderResultPage': (context,{arguments}) => FounderResultPage(),
  '/CofounderListPage': (context,{arguments}) => CofounderListPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
