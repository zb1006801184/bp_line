import 'package:bp_online/page_index.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
      Map result = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        height: Global.ksHeight,
        width: Global.ksWidth,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/bg_pic_top.png"),
          ),
        ),
        child: Stack(
          children: <Widget>[
            
            Positioned(
              bottom: 0,
              child: Container(
                width: Global.ksWidth,
                child: ResultBottomButton("修改", "下一页", () {
                  // _editData(context);
                }, () {
                  // Navigator.of(context).pushNamed("/PlainDesPage",);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
