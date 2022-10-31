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
    return Scaffold(
      appBar: AppBar(
        title: Text('StaggeredView模版'),
      ),
      body: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        itemBuilder: _itemBuilder,
        itemCount: 15,
      ),
    );
  }

  Widget _itemBuilder(context, index) {
    return Container();
  }
}
