import 'dart:convert';

import 'package:example/best_flutter_ui/template/test_data.dart';
import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

class StaggeredViewDelegate extends FairDelegate {
  @override
  Map<String, Function> bindFunction() {
    ///此处添加fair widget中声明的_itemBuilder
    ///key必须与声明的方法名一致
    var fun = super.bindFunction();
    fun.addAll({
      '_itemBuilder': _itemBuilder,
    });
    return fun;
  }

  Widget _itemBuilder(context, index) {
    var aspectRatio = 1.5;

    switch (index % 3) {
      case 0:
        aspectRatio = 1.5;
        break;
      case 1:
        aspectRatio = 2;
        break;
      case 2:
        aspectRatio = 1;
        break;
      default:
        aspectRatio = 1.5;
    }

    return FairWidget(
      name:
          'assets/bundle/lib_best_flutter_ui_template_staggeredview_template_item.fair.json',
      path:
          'assets/bundle/lib_best_flutter_ui_template_staggeredview_template_item.fair.json',
      data: {
        'fairProps': jsonEncode(
            {'imagePath': homeDataGrid[index], 'aspectRatio': aspectRatio}),
      },
    );
  }
}
