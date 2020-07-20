import 'package:flutter/material.dart';
import 'package:bp_online/page/home.dart';
import 'package:bp_online/page/dis.dart';

//tabbar  底部

class Bpline extends StatefulWidget {
  @override
  DoubanAppState createState() => new DoubanAppState();
}

class DoubanAppState extends State<Bpline> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: [
            new Home(),
            new Dis(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(
            controller: controller,
            tabs: [
              new Tab(
                text: "首页",
                icon: new Icon(
                  Icons.movie,
                ),
              ),
              new Tab(
                text: "发现",
                icon: new Icon(
                  Icons.book,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
