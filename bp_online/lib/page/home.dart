import 'package:flutter/material.dart';
import 'test.dart';
import 'package:bp_online/demo/list_view.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("button click !!"),
          textColor: Colors.red,
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new InfiniteListView()),
            );
          },
        ),
      ),
    );
  }
}
