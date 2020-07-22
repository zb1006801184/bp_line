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
final routes = {
  '/': (context) => Home(),
  '/dis': (context) => Dis(),
  '/test': (context, {arguments}) => Test(),
  '/listView': (context) => simpleListView(),
  '/textDemo': (context) => textDemo(),
  '/LayoutView': (context) => layoutView(),
  '/Person': (context) => Person(),
  '/TestList': (context) => InfiniteListView(),
    '/NetWork': (context) => NetWorkDemo(),

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
