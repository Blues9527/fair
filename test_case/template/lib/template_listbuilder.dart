import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class FairListWidget extends StatefulWidget {
  dynamic fairProps;

  FairListWidget({Key? key, this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FairListWidgetState();
}

class _FairListWidgetState extends State<FairListWidget> {
  @FairProps()
  var fairProps;

  @override
  void initState() {
    super.initState();
    fairProps = widget.fairProps;
  }

  int _getItemCount() {
    return fairProps['itemCount'];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Sugar.listBuilder(
          itemCount: _getItemCount(),
          itemBuilder: (BuildContext context, int item) {
            return Card(
              child: Container(
                height: 80,
                alignment: Alignment.center,
                child: Text('$item'),
              ),
            );
          }),
    );
  }
}
