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
import 'bp_project/class/team_page.dart';
import 'bp_project/class/team_result_page.dart';
import 'bp_project/class/project_valuation_page.dart';
import 'bp_project/class/financing_page.dart';
import 'bp_project/class/talent_page.dart';
import 'bp_project/class/money_use_page.dart';
import 'bp_project/class/committed_page.dart';
import 'bp_project/class/committed_result_page.dart';
import 'bp_project/class/outlook_page.dart';
import 'bp_project/class/outlook_result_page.dart';
import 'demo/refresh_demo.dart';
import 'demo/expansionTile_demo.dart';
import 'demo/map_demo.dart';
import 'demo/grideview_demo.dart';
final routes = {
  '/': (context,{arguments}) => Home(),
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
  '/TeamPage': (context,{arguments}) => TeamPage(),
  '/TeamResultPage': (context,{arguments}) => TeamResultPage(),
  '/ProjectValuationPage': (context,{arguments}) => ProjectValuationPage(),
  '/FinancingPage': (context,{arguments}) => FinancingPage(),
  '/TalentPage': (context,{arguments}) => TalentPage(),
  '/MoneyUsePage': (context,{arguments}) => MoneyUsePage(),
  '/CommittedPage': (context,{arguments}) => CommittedPage(),
  '/CommittedResultPage': (context,{arguments}) => CommittedResultPage(),
  '/OutlookPage': (context,{arguments}) => OutlookPage(),
  '/OutlookResultPage': (context,{arguments}) => OutlookResultPage(),
  '/RefreshDemo': (context,{arguments}) => RefreshDemo(),
  '/ExpansionTileDemo': (context,{arguments}) => ExpansionTileDemo(),
  '/MapDemo': (context,{arguments}) => MapDemo(),
  '/GrideViewDemo': (context,{arguments}) => GrideViewDemo(),

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
