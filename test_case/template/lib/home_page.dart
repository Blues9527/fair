import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template/staggerpage.dart';

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
            addItem("ListView.builder模版", () {
              showWidget(
                fairArguments: {'itemCount': 15},
                fairPath: 'assets/bundle/lib_template_listbuilder.fair.json',
              );
            }),
            addItem("ListView.builder模版", () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
                return StaggeredPage();
              }));
            }),
          ],
        ),
      ),
    );
  }

  void showWidget({fairPath, fairArguments}) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
      return FairWidget(
        name: fairPath,
        path: fairPath,
        data: {'fairProps': jsonEncode(fairArguments)},
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
