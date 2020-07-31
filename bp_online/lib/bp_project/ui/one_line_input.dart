//单行输入cell
import 'package:bp_online/page_index.dart';

class OneLineInput extends StatelessWidget {
  final String titles;
  final String placeholderTitle;
  final TextEditingController controller;
  OneLineInput({
    Key key,
    this.titles,
    this.placeholderTitle,
    this.controller,
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
            child: TextField(
              maxLines: 1,
              controller: controller,
              style: TextStyle(fontSize: 18),
              showCursor: true,
              onSubmitted: (String text) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(right: 8),
                  hintStyle: TextStyle(color: Color(0xFFAEAFB7), fontSize: 18),
                  hintText: placeholderTitle),
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

class MuchLineInput extends StatelessWidget {
  final String titles;
  final String placeholderTitle;
  final TextEditingController controller;

  MuchLineInput({
    Key key,
    this.titles,
    this.controller,
    this.placeholderTitle,
  }) : super(key: key);

  Widget _titleWidget(){
    if (titles.length < 1) {
      return Container();
    }
  return Container(
            margin: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              titles,
              style: TextStyle(fontSize: 14),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Global.ksWidth,
      color: Color(0xFFF4F5F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleWidget(),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            padding: EdgeInsets.only(left: 8),
            width: Global.ksWidth - 32,
            height: 120,
            child: TextField(
              controller: controller,
              style: TextStyle(fontSize: 16),
              showCursor: true,
              maxLines: 3000,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 8),
                  hintStyle: TextStyle(color: Color(0xFFAEAFB7), fontSize: 16),
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
  final TextEditingController controller;
  final VoidCallback onTop;

  OneLineSelect({
    Key key,
    this.titles,
    this.placeholderTitle,
    this.controller,
    this.onTop,
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
                      controller: controller,
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
                  onTap: onTop,
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
