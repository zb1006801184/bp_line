import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

class Person extends StatelessWidget {
  final width = window.physicalSize.width;
  final height = window.physicalSize.height;

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      body: Column(
        children: <Widget>[
          //头部视图
          Container(
            color: Colors.white,
            constraints:
                BoxConstraints.tightFor(width: width, height: 156), //卡片大小
            child: Column(
              children: <Widget>[
                //设置
                Container(
                    color: Colors.white,
                    constraints:
                        BoxConstraints.tightFor(width: width, height: 64),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.settings),
                          onPressed: () {
                            print("点击设置");
                          },
                        ),
                      ],
                    )),
                //个人信息
                InkWell(
                  child: Container(
                    constraints:
                        BoxConstraints.tightForFinite(width: width, height: 92),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //头像
                              Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Image(
                                  image:
                                      AssetImage("images/home_pic_start.png"),
                                  width: 72,
                                  height: 72,
                                ),
                              ),
                              //电话
                              Padding(
                                padding: EdgeInsets.only(left: 16, top: 29),
                                child: Text(
                                  "18802013843",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    height: 1,
                                    fontFamily: "PingFangSC-Medium",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              
                            ]),
                      
                        Container(
                                padding: EdgeInsets.only( right: 16),
                                child: Container(
                                  color: Colors.red,
                                  child: Image(
                                    image: AssetImage(
                                        "images/list_icon_goto_gray.png"),
                                  ),
                                ),
                              )
                      ],
                    ),
                  ),
                  onTap: () => {print("点击了个人信息")}, //点击
                )
              ],
            ),
          )
          //listView
        ],
      ),
    );
  }
}
