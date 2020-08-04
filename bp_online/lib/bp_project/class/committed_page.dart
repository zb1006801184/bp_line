//承诺提交页
import 'package:bp_online/page_index.dart';
class CommittedPage extends StatefulWidget {
  @override
  _CommittedPageState createState() => _CommittedPageState();
}

class _CommittedPageState extends State<CommittedPage> {
  List dataList = [];

  _buildItem(List data){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarBase().configAppBar("项目承诺"),
      body: Stack(
        children: [
          Positioned(
          bottom: 12,
          child: 
          CommitBottomButton("提交", (){

          })
          )
        ],
      ),
    );
  }
}