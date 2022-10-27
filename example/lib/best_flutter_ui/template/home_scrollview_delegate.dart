import 'package:flutter/material.dart';

import 'package:fair/fair.dart';

class HomeScrollviewDelegate extends FairDelegate {
  @override
  Map<String, Function> bindFunction() {
    ///此处添加fair widget中声明的_itemBuilder
    ///key必须与声明的方法名一致
    var fun = super.bindFunction();
    fun.addAll({
      '_listItemBuilder': _listItemBuilder,
      // '_gridItemBuilder': _gridItemBuilder,
    });
    return fun;
  }

  Widget _listItemBuilder(context, index) {
    return  Container(color: Colors.yellow, width: 100, height: 100,);

    // return FairWidget(
    //   name:
    //       'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
    //   path:
    //       'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
    //   data: {
    //     'fairProps': jsonEncode(homeDataList[index]),
    //   },
    // );
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
