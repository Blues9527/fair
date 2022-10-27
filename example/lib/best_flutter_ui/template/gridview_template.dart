import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class GridViewTemplate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridViewTemplateState();
}

class _GridViewTemplateState extends State<GridViewTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView模版'),
        ),
        body: GridView.builder(
            gridDelegate: Sugar.sliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: _itemBuilder));
  }

  Widget _itemBuilder(context, index) {
    return Container(
      color: Colors.green,
      width: 100,
      height: 100,
    );
  }
}
