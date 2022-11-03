import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

import 'fair_test_data.dart';

class HomeScrollviewDelegate extends FairDelegate {
  @override
  Map<String, Function> bindFunction() {
    ///此处添加fair widget中声明的_itemBuilder
    ///key必须与声明的方法名一致
    var fun = super.bindFunction();
    fun.addAll({
      '_itemBuilder': _itemBuilder,
      // '_gridItemBuilder': _gridItemBuilder,
    });
    return fun;
  }

  Widget _itemBuilder(context, index) {
    return FairWidget(
      name:
          'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
      path:
          'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
      data: {
        'fairProps': jsonEncode(homeDataList[index]),
      },
    );
  }
//
// Widget _gridItemBuilder(context, index) {
//   return FairWidget(
//     name:
//         'assets/bundle/lib_best_flutter_ui_template_home_scrollview_grid_item.fair.json',
//     path:
//         'assets/bundle/lib_best_flutter_ui_template_home_scrollview_grid_item.fair.json',
//     data: {
//       'fairProps': jsonEncode(homeDataGrid[index]),
//     },
//   );
// }
}
