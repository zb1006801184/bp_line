import 'package:bp_online/page_index.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Widget> buildItemWidget(context, List dataList) {
    List<Widget> itemList = [];
    for (var item in dataList) {
      itemList.add(Row(
        children: [
          Container(
            width: Global.ksWidth - 32,
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Text(item,style: TextStyle(fontSize: 16,)),
          ),
        ],
      ));
    }
    return itemList;
  }

  @override
  Widget build(BuildContext context) {
    Map result = ModalRoute.of(context).settings.arguments;
    Map map1 = result["map1"];
    Map map2 = result["map2"];
    List list1 = map1["list1"];
    List list2 = map2["list2"];
    return Scaffold(
      body: Container(
        height: Global.ksHeight,
        width: Global.ksWidth,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/bg_pic_top.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: Global.ksHeight,
              width: Global.ksWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: 16,
                        top:
                            Global.ksToolbarHeight + Global.ksStateHeight + 16),
                    child: Text(result["title"],
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1F3ABB))),
                  ),
                  Expanded(
                      child: Scrollbar(
                          child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //第一个标题
                        Container(
                            margin: EdgeInsets.only(top: 32, left: 16),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  color: Colors.red,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "${map1["title"]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            )),
                        //第一个内容
                        Container(
                          child:
                              Column(children: buildItemWidget(context, list1)),
                        ),
                        //第二个标题
                        Container(
                            margin: EdgeInsets.only(top: 32, left: 16),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  color: Colors.red,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "${map2["title"]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            )),
                        //第二个内容
                        Container(
                          child:
                              Column(children: buildItemWidget(context, list2)),
                        ),
                      ],
                    ),
                  ))),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: Global.ksWidth,
                child: ResultBottomButton("修改", "下一页", () {
                  // _editData(context);
                }, () {
                  String title = result["title"];
                  if (title == "痛点解决描述") {
                  Navigator.of(context).pushNamed("/TechniquePage",);
                  }
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
