import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fair/fair.dart';

typedef DataSource = Function(int index);

class PopupMenuDelegate extends FairDelegate {
  final String path;
  final DataSource dataSource;

  PopupMenuDelegate({required this.path, required this.dataSource});

  @override
  Map<String, Function> bindFunction() {
    ///此处添加fair widget中声明的_itemBuilder
    ///key必须与声明的方法名一致
    var fun = super.bindFunction();
    fun.addAll({
      '_itemBuilder': _itemBuilder,
      '_popupMenuBuilder': _popupMenuBuilder,
    });
    return fun;
  }

  Widget _itemBuilder(context, index) {
    return FairWidget(
      name: path,
      path: path,
      data: {
        'fairProps': jsonEncode(dataSource.call(index)),
      },
    );
  }

  List<PopupMenuEntry<String>> _popupMenuBuilder(context) {
    return ['1', '2', '3']
        .map((e) => PopupMenuItem(value: e, child: Text(e)))
        .toList();
  }


  void _onSelect(value) {

  }

  void _onCancel() {}
}
