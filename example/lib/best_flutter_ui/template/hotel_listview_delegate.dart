import 'dart:convert';

import 'package:flutter/material.dart';

import 'test_data.dart';
import 'package:fair/fair.dart';

class HotelListviewDelegate extends FairDelegate {
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
          'assets/bundle/lib_best_flutter_ui_template_hotel_listview_item.fair.json',
      path:
          'assets/bundle/lib_best_flutter_ui_template_hotel_listview_item.fair.json',
      data: {
        'fairProps': jsonEncode(hotelListData[index]),
      },
    );
  }
}