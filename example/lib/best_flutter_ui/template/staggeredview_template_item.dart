import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class StaggeredItemView extends StatefulWidget {
  dynamic fairProps;

  StaggeredItemView({Key? key, required this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StaggeredItemViewState();
}

class _StaggeredItemViewState extends State<StaggeredItemView> {
  @FairProps()
  var fairProps;

  String getImagePath() {
    return fairProps['imagePath'];
  }

  double aspectRatio() {
    return fairProps['aspectRatio'];
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio(),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        child: Image.network(getImagePath(), fit: BoxFit.cover),
      ),
    );
  }
}
