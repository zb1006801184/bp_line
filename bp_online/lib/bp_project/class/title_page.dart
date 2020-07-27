//封面

// import 'dart:js';

import 'package:bp_online/page_index.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:city_pickers/city_pickers.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
class TitlePage extends StatefulWidget {
  @override
  _TitlePageState createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  final controllerName = TextEditingController(); //项目名称
  final controllerCompany = TextEditingController(); //公司名称
  final controllerDes = TextEditingController(); //项目描述
  final controllerIndustry = TextEditingController(); //项目行业
  final controllerType = TextEditingController(); //项目类别
  final controllerCity = TextEditingController(); //项目所在城市
  final controllerDate = TextEditingController(); //项目日期
  List industryList = ["互联网/IT/电子/通信", "广告/传媒/文化/体育", "金融、教育培训"];
  List typeList = ["模式创新", "技术创新", "原创版权"];
  //时间选择器
  void _showDatePicker(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      locale: DateTimePickerLocale.zh_cn,
      dateFormat: "yyyy-MM-dd",
      
      onConfirm: (dateTime,index){
        controllerDate.text = dateTime.toString().substring(0,11);
      },
      );
  }
  //城市选择器
  void _showCitySelect(BuildContext context) async {
    Result result =
        await CityPickers.showCityPicker(context: context, height: 300);
    if (result != null) {
      controllerCity.text = "${result.provinceName} - ${result.cityName}";
    }
  }

  //单行选择器
  void _showCupertinoPicker(
      BuildContext cxt, List listData, TextEditingController controller) {
    FocusScope.of(context).requestFocus(FocusNode());
    final picker = CupertinoPicker(
      itemExtent: 40,
      onSelectedItemChanged: (position) {
        controller.text = listData[position];
      },
      children: buildGrid(listData),
      backgroundColor: Colors.white,
    );

    showCupertinoModalPopup(
        context: cxt,
        builder: (cxt) {
          return Container(height: 200, child: picker);
        });
  }

  List buildGrid(List listData) {
    List<Widget> tiles = [];
    for (var item in listData) {
      tiles.add(Center(
        child: Text(item),
      ));
    }
    return tiles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "封面",
          style: TextStyle(color: Colors.black),
        ),
        leading: Text(''),
        backgroundColor: Color(0xFFf4f5f7),
        elevation: 0, //阴影辐射范围
      ),
      body: InkWell(
        child: ListView(
          children: <Widget>[
            OneLineInput(
              titles: "项目名称",
              placeholderTitle: "请填写项目名称",
              controller: controllerName,
            ),
            MuchLineInput(
              titles: "项目描述",
              placeholderTitle: "请用一句话描述您的创业项目是做什么的",
              controller: controllerDes,
            ),
            OneLineSelect(
              titles: "项目所属行业",
              placeholderTitle: "请选择所属行业",
              controller: controllerIndustry,
              onTop: () {
                _showCupertinoPicker(context, industryList, controllerIndustry);
              },
            ),
            OneLineSelect(
              titles: "项目类别",
              placeholderTitle: "请选择项目类别",
              controller: controllerType,
              onTop: () {
                _showCupertinoPicker(context, typeList, controllerType);
              },
            ),
            OneLineSelect(
              titles: "项目团队所在城市",
              placeholderTitle: "请选择所在城市",
              controller: controllerCity,
              onTop: () {
                // _showCupertinoPicker(context,industryList,controllerCity);
                _showCitySelect(context);
              },
            ),
            OneLineInput(
              titles: "公司名称",
              placeholderTitle: "请填写公司名称",
              controller: controllerCompany,
            ),
            OneLineSelect(
              titles: "日期",
              placeholderTitle: "选择日期",
              controller: controllerDate,
              onTop: () {
                // _showCupertinoPicker(context, industryList, controllerDate);
                _showDatePicker(context);
              },
            ),
            CommitBottomButton("提交", () {
              Navigator.pushNamed(context, "/TitlePageResult");
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
