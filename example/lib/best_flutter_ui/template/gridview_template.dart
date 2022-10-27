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
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Container(
              color: Colors.green,
              width: 100,
              height: 150,
            ),
            Container(
              color: Colors.yellow,
              width: 80,
              height: 250,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 50,
              height: 150,
            ),
            Container(
              color: Colors.deepPurpleAccent,
              width: 100,
              height: 150,
            ),
            Container(
              color: Colors.tealAccent,
              width: 50,
              height: 150,
            ),
            Container(
              color: Colors.indigo,
              width: 200,
              height: 150,
            ),
            Container(
              color: Colors.black87,
              width: 220,
              height: 100,
            ),
            Container(
              color: Colors.deepOrange,
              width: 70,
              height: 100,
            ),
            Container(
              color: Colors.white30,
              width: 200,
              height: 150,
            ),
            Container(
              color: Colors.pink,
              width: 100,
              height: 150,
            ),
          ],
        ));
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('GridView模版'),
    //     ),
    //     body: GridView.builder(
    //         gridDelegate: _gridDelegate(),
    // Sugar.sliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
    // itemBuilder: (context, index) {
    //   return Container(
    //     color: Colors.green,
    //     width: 100,
    //     height: 100,
    //   );
    // }
    // itemBuilder: _itemBuilder));
  }

  SliverGridDelegate _gridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);
  }

  Widget _itemBuilder(context, index) {
    return Container(
      color: Colors.green,
      width: 100,
      height: 100,
    );
  }
}
