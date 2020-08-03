import 'package:bp_online/page_index.dart';

class ProjetStagePage extends StatefulWidget {
  @override
  _ProjetStagePageState createState() => _ProjetStagePageState();
}

class _ProjetStagePageState extends State<ProjetStagePage> {
  final controllerStage = TextEditingController();
  final controllerStory = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "项目阶段",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: Text(''),
        backgroundColor: Color(0xFFf4f5f7),
        elevation: 0, //阴影辐射范围
        brightness: Brightness.light,
      ),
      body: GestureDetector(
        child: Stack(
          children: [
            Container(
              width: Global.ksWidth,
              height: Global.ksHeight,
              child: ListView(
                children: [
                  OneLineSelect(
                    titles: "项目当前处于什么阶段",
                    placeholderTitle: "选择项目阶段",
                    controller: controllerStage,
                  ),
                  MuchLineInput(
                    titles: "创业故事",
                    placeholderTitle: "请简单描述创业过程与故事",
                  )
                ],
              ),
            ),
            Positioned(bottom: 12, child: CommitBottomButton("提交", () {}))
          ],
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
