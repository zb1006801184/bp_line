import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';

class Person extends StatelessWidget {
  final width = window.physicalSize.width / 2;
  final height = window.physicalSize.height / 2;

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
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
                            print("点击设置$width");
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              //头像
                              Container(
                                constraints:
                                    BoxConstraints.tightFor(height: 72),
                                margin: EdgeInsets.only(left: 16, top: 0),
                                // color: Colors.red,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(36.0),
                                  ),
                                ),
                                child: Image(
                                  image:
                                      AssetImage("images/home_pic_start.png"),
                                  width: 72,
                                  height: 72,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              //电话
                              Padding(
                                padding: EdgeInsets.only(left: 16),
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
                          constraints:
                              BoxConstraints.tightFor(height: 72, width: 32),
                          padding: EdgeInsets.only(right: 16),
                          child: Container(
                            child: Image(
                              image:
                                  AssetImage("images/list_icon_goto_gray.png"),
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
          ),
          //listView
          Container(
            height: height - 156,
            color: const Color(0xFFF4F5F7),
            child: ListView.builder(
                itemCount: 10,
                itemExtent: 128.0, 
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      height: 112,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(left: 12, top: 16, right: 12),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "项目号",
                                      style: TextStyle(
                                          color: Color(0xff2A2A2A),
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "新消息（1）",
                                      style: TextStyle(
                                          color: Color(0xFFFF505D),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            child: Text(
                              "项目名称",
                              style: TextStyle(
                                  color: Color(0xff2A2A2A), fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12, bottom: 16),
                            child: Text(
                              "提交时间",
                              style: TextStyle(
                                  color: Color(0xff2A2A2A), fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      print("点击了cell:$index");
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
