//封面结果页
import 'package:bp_online/page_index.dart';

class TitlePageResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Global.ksHeight,
        width: Global.ksWidth,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/bg_pic_top.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 16,
                  top: Global.ksToolbarHeight + Global.ksStateHeight + 16),
              child: Text(
                "解决者地图",
                style: TextStyle(
                    color: Color(0xFF1F3ABB),
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32, left: 16, right: 16),
              child: Text(
                "为解决者建立一个展示自己真实能力的平台，用的闲时对接项目。",
                style: TextStyle(
                    color: Color(0xFF2A2A2A),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 32, left: 16, right: 16),
              color: Color(0xFFE4E4E4),
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          color: Colors.red,
                          width: 8,
                          height: 8,
                          // child: Image(color: Colors.red,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text("项目所属行业：互联网"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          color: Colors.red,
                          width: 8,
                          height: 8,
                          // child: Image(color: Colors.red,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text("项目所属行业：互联网"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          color: Colors.red,
                          width: 8,
                          height: 8,
                          // child: Image(color: Colors.red,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text("项目所属行业：互联网"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 32, left: 16, right: 16),
              color: Color(0xFFE4E4E4),
            ),
          
          ],
        ),
      ),
    );
  }
}
