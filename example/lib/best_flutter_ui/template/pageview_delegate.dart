import 'dart:convert';

import 'package:example/best_flutter_ui/template/test_data.dart';
import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

class PageViewDelegate extends FairDelegate {
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
    return FairWidget(
      name:
          'assets/bundle/lib_best_flutter_ui_template_pageview_item_template.fair.json',
      path:
          'assets/bundle/lib_best_flutter_ui_template_pageview_item_template.fair.json',
      data: {
        'fairProps': jsonEncode({'imagePath': homeDataList[index]}),
      },
    );
  }
}
