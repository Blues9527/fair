import 'dart:convert';

import 'package:example/best_flutter_ui/template/test_data.dart';
import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

class GridviewDelegate extends FairDelegate {
  @override
  Map<String, Function> bindFunction() {
    ///此处添加fair widget中声明的_itemBuilder
    ///key必须与声明的方法名一致
    var fun = super.bindFunction();
    fun.addAll({
      '_itemBuilder': _itemBuilder,
      '_gridDelegate': _gridDelegate,
    });
    return fun;
  }

  SliverGridDelegate _gridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10);
  }

  Widget _itemBuilder(context, index) {
    return FairWidget(
      name:
          'assets/bundle/lib_best_flutter_ui_template_gridview_item_template.fair.json',
      path:
          'assets/bundle/lib_best_flutter_ui_template_gridview_item_template.fair.json',
      data: {
        'fairProps': jsonEncode({'imagePath': homeDataGrid[index]}),
      },
    );
  }
}