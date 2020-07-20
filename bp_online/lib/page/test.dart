
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: FlatButton(
              child: Text("test"),
              textColor: Colors.red,
              onPressed: () {
                print("zzz");
              },
            ),
      ),
      
    );
  }
}