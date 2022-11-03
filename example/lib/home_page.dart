import 'package:example/best_flutter_ui/best_ui_page.dart';
import 'package:example/best_flutter_ui/template/home_scrollview.dart';
import 'package:example/public_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: Text('fair使用和介绍'),
        ),
        body: ListView(
          children: [
            addItem("fair @FairProps 注解的使用", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/fair/lib_fair_widget_fair_props_widget.fair.json',
              );
            }),
            addItem("fair delegate的使用", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/fair/lib_fair_widget_fair_delegate_widget.fair.json',
              );
            }),
            addItem("fair plugin的使用", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/fair/lib_fair_widget_fair_plugin_widget.fair.json',
              );
            }),
            addItem("fair bestUI演示", () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
                return BestUiPage();
              }));
            }),
            addItem("fair bestUI ListBuilder动态化模版", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/bundle/lib_best_flutter_ui_template_hotel_listview.fair.json',
              );
            }),
            addItem("fair bestUI HomeScrollView模版", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/bundle/lib_best_flutter_ui_template_home_scrollview.fair.json',
              );
            }),
            addItem("fair bestUI HomeScrollView普通模版", () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
                return HomeScrollView();
              }));
            }),
            addItem("fair bestUI GridView模版", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/bundle/lib_best_flutter_ui_template_gridview_template.fair.json',
              );
            }),
            addItem("fair bestUI PageView模版", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                    'assets/bundle/lib_best_flutter_ui_template_pageview_template.fair.json',
              );
            }),
            addItem("fair bestUI StaggeredView模版", () {
              showWidget(
                fairArguments: {"fairText": '路由是个好东西，要进一步封装'},
                fairPath:
                'assets/bundle/lib_best_flutter_ui_template_staggeredview_template.fair.json',
              );
            }),
          ],
        ),
      ),
    );
  }

  void showWidget({fairPath, fairArguments}) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
      return PublicWidget(
        fairArguments: fairArguments,
        fairPath: fairPath,
      );
    }));
  }

  Widget addItem(String itemName, dynamic onPress) {
    return GestureDetector(
        child: Container(
            alignment: Alignment.centerLeft,
            color: Colors.white,
            height: 100,
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              itemName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.left,
            )),
        onTap: onPress);
  }
}
