import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: FlatButton(
              child: Text("button click"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("dis", arguments: "zzzs");
              },
            ),
      ),
      
    );
  }
}