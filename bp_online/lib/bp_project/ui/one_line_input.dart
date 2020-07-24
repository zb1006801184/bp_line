//单行输入cell
import 'package:bp_online/page_index.dart';

class OneLineInput extends StatelessWidget {
  final String titles;
  final String placeholderTitle;
  OneLineInput({
    Key key,
    this.titles,
    this.placeholderTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Global.ksWidth,
      color: Color(0xFFF4F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              titles,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            padding: EdgeInsets.only(left: 8),
            width: Global.ksWidth - 32,
            height: 48,
            // color: Colors.white,
            child: TextField(
              style: TextStyle(fontSize: 18),
              keyboardType: TextInputType.number,
              showCursor: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 1),
                  hintStyle: TextStyle(color: Color(0xFFAEAFB7), fontSize: 18),
                  hintText: placeholderTitle),
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              // border: new Border.all(width: 1, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}

class MuchLineInput extends StatelessWidget {
  final String titles;
  final String placeholderTitle;

  MuchLineInput({
    Key key,
    this.titles,
    this.placeholderTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Global.ksWidth,
      color: Color(0xFFF4F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              titles,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            padding: EdgeInsets.only(left: 8),
            width: Global.ksWidth - 32,
            height: 120,
            // color: Colors.white,
            child: TextField(
              style: TextStyle(fontSize: 18),
              keyboardType: TextInputType.number,
              showCursor: true,
              maxLines: 3000,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 1),
                  hintStyle: TextStyle(color: Color(0xFFAEAFB7), fontSize: 18),
                  hintText: placeholderTitle),
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              // border: new Border.all(width: 1, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}

class OneLineSelect extends StatelessWidget {
  final String titles;
  final String placeholderTitle;
  OneLineSelect({
    Key key,
    this.titles,
    this.placeholderTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Global.ksWidth,
      color: Color(0xFFF4F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              titles,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            padding: EdgeInsets.only(left: 8),
            width: Global.ksWidth - 32,
            height: 48,
            child: Row(
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 48,
                    width: Global.ksWidth - 32 - 30,
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      showCursor: true,
                      enabled: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 1),
                          hintStyle:
                              TextStyle(color: Color(0xFFAEAFB7), fontSize: 18),
                          hintText: placeholderTitle),
                    ),
                  ),
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    print("选择$titles");
                  },
                ),
                Image(
                  image: AssetImage("images/list_icon_goto_gray.png"),
                  width: 16,
                  height: 16,
                ),
              ],
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          )
        ],
      ),
    );
  }
}
