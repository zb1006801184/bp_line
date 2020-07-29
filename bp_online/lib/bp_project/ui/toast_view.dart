import 'package:bp_online/page_index.dart';

class ToastView extends StatelessWidget {
  String title;
  ToastView({
    Key key,
    this.title,
  }) : super(key: key);
  showMessage() {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
