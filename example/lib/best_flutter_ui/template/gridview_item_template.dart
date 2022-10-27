import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class GridViewItemTemplate extends StatefulWidget {
  dynamic fairProps;

  GridViewItemTemplate({Key? key, required this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GridViewItemTemplateState();
}

class _GridViewItemTemplateState extends State<GridViewItemTemplate> {
  @FairProps()
  var fairProps;

  String getImagePath() {
    return fairProps['imagePath'];
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        child: Image.network(getImagePath(), fit: BoxFit.cover),
      ),
    );
  }
}
