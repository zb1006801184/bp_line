//封面

import 'package:bp_online/page_index.dart';

class TitlePage extends StatefulWidget {
  @override
  _TitlePageState createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("封面"),
      ),
      body: InkWell(
        child: ListView(
          children: <Widget>[
            OneLineInput(
              titles: "项目名称",
              placeholderTitle: "请填写项目名称",
            ),
            MuchLineInput(
              titles: "项目描述",
              placeholderTitle: "请用一句话描述您的创业项目是做什么的",
            ),
            OneLineSelect(
              titles: "项目所属行业",
              placeholderTitle: "请选择所属行业",
            ),
            OneLineSelect(
              titles: "项目类别",
              placeholderTitle: "请选择项目类别",
            ),
            OneLineSelect(
              titles: "项目团队所在城市",
              placeholderTitle: "请选择所在城市",
            ),
            OneLineInput(
              titles: "公司名称",
              placeholderTitle: "请填写公司名称",
            ),
            OneLineSelect(
              titles: "日期",
              placeholderTitle: "选择日期",
            ),
            CommitBottomButton("提交", () {}),
          ],
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
