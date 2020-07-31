//痛点描述
import 'package:bp_online/page_index.dart';

class PlainDesPage extends StatefulWidget {
  @override
  _PlainDesPageState createState() => _PlainDesPageState();
}

class _PlainDesPageState extends State<PlainDesPage> {
  final controllerPainDescribe = TextEditingController();
  final controllePainOtherScheme = TextEditingController();
  final controllerPainProjectSchemeDescribe = TextEditingController();
  @override
  Widget build(BuildContext context) {
    FormDataModel model = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "痛点解决描述",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: Text(''),
        backgroundColor: Color(0xFFf4f5f7),
        elevation: 0, //阴影辐射范围
        brightness: Brightness.light,
      ),
      body: GestureDetector(
        child: ListView(
          children: <Widget>[
            MuchLineInput(
              titles: "关于项目解决了什么痛点",
              placeholderTitle: "请描述这个痛点",
              controller: controllerPainDescribe,
            ),
            MuchLineInput(
              titles: "",
              placeholderTitle: "当前社会解决这个痛点的方法",
              controller: controllePainOtherScheme,
            ),
            SelectMuchView(
              title: "您的项目用什么方法解决这个痛点（多选）",
              itemList: [
                "新技术",
                "新模式",
              ],
              selectItemList: [],
            ),
            MuchLineInput(
              titles: "",
              placeholderTitle: "请简单描述即可，后面页面有关于技术与模、\n式的详细内容填写页面。",
              controller: controllerPainProjectSchemeDescribe,
            ),
            CommitBottomButton("提交", () {
              // _savaFormData(context);
              FormDataModel model = FormDataModel();
              model.painDescribe = "为解决者建立一个展示自己真实能力的平台，用自己的闲时对接项目。";
              model.painOtherScheme = "为解决者建立一个展示自己真实能力的平台，用自己的闲时对接项目。";
              model.painProjectScheme = ["新技术", "新模式"];
              model.painProjectSchemeDescribe = "为解决者建立一个展示自己真实能力的平台，用自己的闲时对接项目。";
              Navigator.of(context).pushNamed("/ResultPage",
                  arguments: ConfigData().configResult(model, "痛点解决描述"));
            }),
          ],
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
