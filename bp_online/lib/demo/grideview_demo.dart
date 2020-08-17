import '../page_index.dart';

class GrideViewDemo extends StatelessWidget {
  List dataList = ["1","2","3","4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarBase().configAppBar("GrideViewDemo"),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            child:GridView.count(crossAxisCount: 3,children: _bodyList(),childAspectRatio: 1,),
          ),
          Container(
            height: 250,
            child:GridView.count(crossAxisCount: 3,children: _bodyList(),childAspectRatio: 1,),
          ),
        ],
      ),
    );
  }

  List<Widget> _bodyList() {
    List <Widget>result = [];
    for (var item in dataList) {
      result.add(
        Container(
          margin: EdgeInsets.all(5),
          height: 300,
          color: Colors.red,
          child: Center(child: Text(item),)
        )
      );
    }


    return result;
  }
}