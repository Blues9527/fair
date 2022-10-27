import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@FairPatch()
class StaggeredItemView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StaggeredItemViewState();
}

class _StaggeredItemViewState extends State<StaggeredItemView> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
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
    );
  }
}
